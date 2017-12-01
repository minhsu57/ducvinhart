<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-8">
            <div style="font-size: 24px">Quản lý chi tiết đơn hàng - <?php echo $id; ?></div>
        </div>
        <div class="col-lg-4">
            <a href="<?php echo base_url('admin/order') ?>"><button class="pull-right btn btn-warning">Trở về</button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th>Tên sản phẩm</th>';
            echo '<th>Hình</th>';
            echo '<th>số lượng</th>';
            echo '<th>Giá</th>';
            echo '<th>Thao tác</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            $total_price = 0;
            foreach($items as $item)
            {
                $total_price += $item->price * $item->quantity;
                $input["where"]  = array('product_id' => $item->product_id, 'lang_slug' => 'vi');
                $translation = $this->product_model->get_row_product($input);
                echo '<tr>';
                echo '<td>'.$translation->name.'</td>'; ?>             
                <td><img style="height: 100px;" src="<?php echo base_url($translation->image); ?>"></td>
                <?php
                echo '<td>'.$item->quantity.'</td>';
                echo '<td>'.number_format($item->price).'</td>';
                echo '<td>';
                echo '<a href="'.base_url('admin/order/delete_detail/'.$item->id.'/'.$id).'" style="color:#fff; margin-left:5px"  onclick="return confirm(\'Bạn chắc chắn muốn xóa ?\')"><button class="btn btn-sm btn-danger">Xóa</button></a>';
                echo '</td>';
                echo '</tr>';
            }
            echo '</tbody>';
            echo '</table>';
            ?>
            <div class="total pull-right">
                <span>Tổng tiền</span> : <span style="color: #FF5722;"><span id="total_price"><?php echo number_format($total_price); ?></span> VND</span>

            </div>
        </div>
    </div>
</div>