<?php defined('BASEPATH') or exit('No direct script access allowed');
?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">PRODUCT MANAGEMENT</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <a href="<?php echo base_url('admin/product/create') ?>"><button class="btn btn-primary btn-md pull-right"><li class="fa fa-plus-circle"></li></button></a>
        </div>
    </div>
    <div class="row" style="margin-top: 10px">
        <div class="col-xs-12">
            <form method="GET" action="<?php echo base_url('admin/product'); ?>">
                <div class="col-lg-4 pd-l-0">
                    <select class="form-control" name="category">                    
                        <option value="">-- Chọn Category --</option>
                        <?php foreach ($categories as $value) { ?>
                        <option value="<?php echo $value->cate_id; ?>" <?php echo set_select('category',$value->cate_id,( !empty($this->input->get('category')) && $this->input->get('category') == $value->cate_id ? TRUE : FALSE )); ?>  ><?php if($value->level==1) echo "-- "; else if($value->level==2) echo "------ "; echo $value->name; ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="col-lg-4 pd-l-0">
                    <input type="text" name="name" class="form-control" placeholder="Nhập tên để tìm kiếm" value="<?php echo $this->input->get('name'); ?>">
                </div>
                <div class="col-lg-4 pd-l-0">
                    <input type="text" name="model" class="form-control" placeholder="Nhập model id để tìm kiếm" value="<?php echo $this->input->get('model'); ?>">
                </div>
                
                <button class="btn btn-primary btn-md pull-right"  type="submit"><li class="fa fa-search"></li> SEARCH</button>
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th><div class="text-center">No</div></th>';
            echo '<th><div class="text-center">Image</div></th>';
            echo '<th>Product Name</th>';
            echo '<th>Model</th>';
            echo '<th>Price</th>';
            echo '<th><div class="text-center">Status</div></th>';
            echo '<th>Actions</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            if (!empty($items)) {
                foreach ($items as $key => $item) {
                    echo '<tr>';
                    echo '<td><div class="text-center">'.($key+1).'</div></td>';
                    echo '<td><img src="'.base_url($item->image).'" style="width: 60px;"></td>';
                    echo '<td>'.$item->name.'</td>';
                    echo '<td>'.$item->model_id.'</td>';
                    echo '<td>'.$item->price.'</td>'; ?>
                    <td><div class="text-center"><?php if ($item->status == 1) {
                        echo "<li class='fa fa-check'></li>";
                    } else {
                        echo "<li class='fa fa-times'></li>";
                    } ?></div></td>
                    <?php
                    echo '<td>';
                    echo '<a href="product/edit/'.$item->id.'/'.$item->translation_id.'" style="color:#fff"><button class="btn btn-sm btn-warning"><li class="fa fa-pencil"></li></button></a> ';
                    echo '<a href="product/delete/'.$item->id.'" style="color:#fff" onclick="return confirm(\'Are you sure to delete ?\')"><button class="btn btn-sm btn-danger"><li class="fa fa-trash"></li></button></a>';
                    ?>
                    <?php
                    echo '</td>';
                    echo '</tr>';
                }
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
