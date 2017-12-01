<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h2>Quản lý đơn hàng</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Tên</th>';
            echo '<th>Email</th>';
            echo '<th>Địa chỉ</th>';
            echo '<th>Điện thoại</th>';
            echo '<th>Ngày</th>';
            echo '<th>Đã xem</th>';
            echo '<th>Trạng thái</th>';
            echo '<th>Thao tác</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';

            foreach($items as $item)
            {
                echo '<tr>';
                echo '<td>'.$item->name.'</td>';             
                echo '<td>'.$item->email.'</td>';
                echo '<td>'.$item->address.'</td>';
                echo '<td>'.$item->phone.'</td>';
                echo '<td>'.$item->created_date.'</td>';?>
                <td><?php if($item->is_view ==1) echo '<span class="fa fa-check"></span>'; else echo 'Chưa duyệt'; ?></td>
                <td><?php if($item->is_pay ==0) echo 'Chưa thanh toán'; else echo '<span class="fa fa-check"></span> Đã thanh toán'; ?></td>
                <?php
                echo '<td>';
                echo '<a href="'.base_url('admin/order/view/'.$item->id).'" style="color:#fff; margin-left:5px"><button class="fa fa-eye btn btn-default"></button></a>';
                echo '<a href="'.base_url('admin/order/delete/'.$item->id).'" style="color:#fff; margin-left:5px"  onclick="return confirm(\'Bạn chắc chắn muốn xóa ?\')"><button class="btn btn-sm btn-danger">Xóa</button></a>';
                echo '<a href="'.base_url('admin/order/set_payment/'.$item->id).'" style="color:#fff; margin-left:5px"  onclick="return confirm(\'Bạn chắc chắn muốn chuyển trạng thái ?\')"><button class="btn btn-sm btn-success">Đã T.Toán</button></a>';
                ?>
                <?php
                echo '</td>';
                echo '</tr>';
            }
            echo '</tbody>';
            echo '</table>';
            echo '<nav><ul class="pagination">';
            // echo //$next_previous_pages;
            echo '</ul></nav>';
            ?>

        </div>
    </div>
</div>