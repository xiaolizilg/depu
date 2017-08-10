<?php

namespace App\Repositories;

use Illuminate\Http\Request;
use App\Models\Image\Image;
use App\Models\File\File;
use App\Repositories\BaseRepository;
use Storage;
use Carbon\Carbon as Carbon;

/**
 * Class UploaderRepository.
 */
class UploaderRepository extends BaseRepository
{
    const IMAGE_ROOT = 'public/upload/images/';

    const FILE_ROOT = 'public/upload/files/';

    const MODEL = Image::class;

    public function uploadImage(Request $request)
    {
        $path = self::IMAGE_ROOT . Carbon::now()->format('Ymd');
        $md5 = md5_file($request->file('file'));

        if ($file = $this->query()->where(['md5' => $md5, 'status' => 1])->first()) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        $path = $request->file('file')->store($path);

        if ($file = $this->query()->create(['path' => 'storage/' . str_replace('public/', '', $path), 'md5' => $md5, 'status' => 1])) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        throw new GeneralException('保存图片失败。');
    }

    public function uploadFile(Request $request)
    {
        $path = self::FILE_ROOT . Carbon::now()->format('Ymd');
        $md5 = md5_file($request->file('file'));

        if ($file = File::where(['md5' => $md5, 'status' => 1])->first()) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        $path = $request->file('file')->store($path);

        if ($file = File::create(['path' => 'storage/' . str_replace('public/', '', $path), 'md5' => $md5, 'status' => 1])) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        throw new GeneralException('保存文件失败。');
    }

    public function crawlerImage($file_binary)
    {
        $path = self::IMAGE_ROOT . Carbon::now()->format('Ymd');
        $md5 = md5($file_binary);
        $ext = 'jpg';

        $name = $md5 . '.' . $ext;

        $filepath = $path . '/' . $name;

        if ($file = $this->query()->where(['md5' => $md5, 'status' => 1])->first()) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        Storage::put($filepath, $file_binary);

        if ($file = $this->query()->create(['path' => 'storage/' . str_replace('public/', '', $filepath), 'md5' => $md5, 'status' => 1])) {
            return [
                'id' => $file->id,
                'url' => config('app.url') . '/' . $file->path,
            ];
        }

        throw new GeneralException('保存图片失败。');
    }
}
