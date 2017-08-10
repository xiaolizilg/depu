<?php

namespace App\Http\Controllers\Backend\Order;

use App\Models\Order\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Order\OrderRepository;

class OrderController extends Controller
{
    protected $orders;

    public function __construct(OrderRepository $orders)
    {
        $this->orders = $orders;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $orders = $this->orders->searchPaginate(['order_code', request()->input('search_word')]);
        } else {
            $orders = $this->orders->paginate();
        }

        return view('backend.order.index')
            ->with(compact('orders'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Order\Order  $order
     * @return \Illuminate\Http\Response
     */
    public function show(Order $order)
    {
        return view('backend.order.show')
            ->with(compact('order'));
    }

    public function mark(Order $order, $status)
    {
        $this->orders->mark($order, $status);

        return redirect()
            ->route('backend.order.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
