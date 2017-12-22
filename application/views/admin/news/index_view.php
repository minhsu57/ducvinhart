<?php defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <?php if($type_id == 28){ ?>
            <h3 class="text-center">DỊCH VỤ</h3>
            <?php }else{ ?>
            <h3 class="text-center">CHUYÊN ĐỀ</h3>
            <?php } ?>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <a href="<?php echo base_url('admin/news/create/'.$type_id.'?type='.$this->input->get('type')); ?>"><button class="pull-right btn btn-primary"><li class="fa fa-plus-circle"></li></button></a>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12" style="margin-top: 10px;">
            <?php
            echo '<table class="table table-hover table-bordered table-condensed">';
            echo '<thead>';
            echo '<tr>';
            echo '<th style="width: 30px !important"><div class="text-center">No</div></th>';
            echo '<th style="width: 200px !important">Category name</th>';
            echo '<th>Title</th>';
            echo '<th style="width: 120px !important">Image</th>';
            echo '<th style="width: 150px !important">Modified date</th>';            
            echo '<th style="width: 90px !important">Actions</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';
            if(!empty($items))
            {
                foreach($items as $key => $item)
                {
                    echo '<tr>';
                    echo '<td><div class="text-center">'.$record_number.'</div></td>';
                    echo '<td><div style="max-width: 300px;">'.$item->category_name.'</div></td>';
                    echo '<td><div style="max-width: 300px;">'.$item->title.'</div></td>';
                    echo '<td><img src="'.$item->image.'" style="width: 100px;"></td>';                    
                    echo '<td>'.$item->modified_date.'</td>';
                    echo '<td>';
                    echo '<a href="'.base_url('admin/news/edit/'.$item->id.'/'.$type_id.'?type='.$this->input->get('type')).'" style="color:#fff"><button title="Click to edit" class="btn btn-sm btn-info"><li class="fa fa-pencil"></li></button></a>';
                    echo '<a href="'.base_url('admin/news/delete/'.$item->id.'/'.$type_id.'?type='.$this->input->get('type')).'" style="color:#fff; margin-left:5px" onclick="return confirm(\'Bạn chắc chắn muốn xóa ?\')"><button title="Click to delete" class="btn btn-sm btn-danger"><li class="fa fa-trash"></li></button></a>';
                    ?>
                    <?php
                    echo '</td>';
                    echo '</tr>';
                    $record_number++;
                }
            }
            echo '</tbody>';
            echo '</table>';
            ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12 text-center">
            <?php echo $pagination; ?>
        </div>
    </div>
</div>