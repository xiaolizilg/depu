<?php

namespace App\Exceptions;

use Exception;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException;
use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that should not be reported.
     *
     * @var array
     */
    protected $dontReport = [
        \Illuminate\Auth\AuthenticationException::class,
        \Illuminate\Auth\Access\AuthorizationException::class,
        \Symfony\Component\HttpKernel\Exception\HttpException::class,
        \Illuminate\Database\Eloquent\ModelNotFoundException::class,
        \Illuminate\Session\TokenMismatchException::class,
        \Illuminate\Validation\ValidationException::class,
    ];

    /**
     * Report or log an exception.
     *
     * This is a great spot to send exceptions to Sentry, Bugsnag, etc.
     *
     * @param  \Exception  $exception
     * @return void
     */
    public function report(Exception $exception)
    {
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Exception  $exception
     * @return \Illuminate\Http\Response
     */
    public function render($request, Exception $exception)
    {

        if ($exception instanceof GeneralException) {
            if ($request->expectsJson()) {
                return api($exception->getMessage(), 403, $exception->getMessage());
            }

            return redirect()->back()->with('danger', $exception->getMessage());
        }

        if ($exception instanceof NotFoundHttpException) {
            if ($request->expectsJson()) {
                return api([], 404);
            }
        }

        if ($exception instanceof ModelNotFoundException) {
            if ($request->expectsJson()) {
                return api([], 404);
            }
        }

        if ($exception instanceof MethodNotAllowedHttpException) {
            if ($request->expectsJson()) {
                return api([], 405);
            }
        }

        if ($exception instanceof ValidationException) {
            if ($request->expectsJson()) {
                return api($exception->validator->errors()->first(), 422, $exception->validator->errors()->first());
            }
        }

        if (!($exception instanceof AuthenticationException)) {
            if ($request->expectsJson()) {
                return api($exception->getMessage(), 500, $exception->getMessage());
            }
        }

        return parent::render($request, $exception);
    }

    /**
     * Convert an authentication exception into an unauthenticated response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Illuminate\Auth\AuthenticationException  $exception
     * @return \Illuminate\Http\Response
     */
    protected function unauthenticated($request, AuthenticationException $exception)
    {
        if ($request->expectsJson()) {

            return api('认证失败', 401);
        }

        return redirect()->guest(route('login'));
    }
}
