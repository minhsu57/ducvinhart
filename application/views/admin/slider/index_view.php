<?php defined('BASEPATH') or exit('No direct script access allowed');
?>
<div class="container" style="margin-top:0px;">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="text-center">SLIDER MANAGEMENT</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <a href="<?php echo base_url('admin/slider/create?cate_no='.$this->input->get('cate_no')) ?>"><button class="btn btn-primary btn-md pull-right"><li class="fa fa-plus-circle"></li></button></a>
        </div>
    </div>

    <div class="row" style="margin-top: 10px">
        <div class="col-xs-12">
            <form method="GET" action="<?php echo base_url('admin/slider'); ?>">           
                
                <button class="btn btn-primary btn-md pull-right"  type="submit"><li class="fa fa-search"></li> Search</button>
                <div class="col-lg-4 pd-l-0 pull-right">
                    <select class="form-control" name="cate_no">                    
                        <option value="">-- Chọn Category --</option>
                        <?php foreach ($categories as $value) { ?>
                        <option value="<?php echo $value->cate_id; ?>" <?php echo set_select('cate_no',$value->cate_id,( !empty($this->input->get('cate_no')) && $this->input->get('cate_no') == $value->cate_id ? TRUE : FALSE )); ?>  ><?php if($value->level==1) echo "-- "; else if($value->level==2) echo "------ "; echo $value->name; ?></option>
                        <?php } ?>
                    </select>
                </div>
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
            echo '<th>Category name</th>';
            echo '<th>Image</th>';
            echo '<th>Modified date</th>';
            echo '<th><div class="text-center">Status</div></th>';
            echo '<th>Actions</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            if (!empty($items)) {
                foreach ($items as $key => $item) {
                    $parent_name = "";
                    $CI =& get_instance();
                    $parent_name = $CI->getHierarchyParent($item->parent_id, $parent_name);
                    echo '<tr>';
                    echo '<td><div class="text-center">'.($key+1).'</div></td>';
                    echo '<td>'.$parent_name.$item->category_name.'</td>';
                    echo '<td><img src="'.base_url($item->image_url).'" style="width: 180px;"></td>';
                    echo '<td>'.$item->modified_date.'</td>'; ?>
                    <td><div class="text-center"><?php if ($item->status == 1) {
                        echo "<li class='fa fa-check'></li>";
                    } else {
                        echo "<li class='fa fa-times'></li>";
                    } ?></div></td>
                    <?php
                    echo '<td>';
                    echo '<a href="slider/edit/'.$item->id.'?cate_no='.$this->input->get('cate_no').'" style="color:#fff"><button class="btn btn-sm btn-warning"><li class="fa fa-pencil"></li></button></a> ';
                    echo '<a href="slider/delete/'.$item->id.'?cate_no='.$this->input->get('cate_no').'" style="color:#fff" onclick="return confirm(\'Are you sure to delete ?\')"><button class="btn btn-sm btn-danger"><li class="fa fa-trash"></li></button></a>';
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
