<?php

return array_merge([
    'areas' => json_decode(file_get_contents(storage_path('app/areas/tree.json')), true)
], json_decode(file_get_contents(storage_path('app/website/config.json')), true));
