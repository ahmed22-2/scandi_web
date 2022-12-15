<?php
class Home extends Controller
{
    public $content = "Content-type: application/json";
    

    public function getData(){
            $res = Product::getAll();
            $this->view($res);
    }

    public  function getTypes(){
            $res = ProductController::getTypes();
            $this->view($res);
    }
    public  function getAttributes(){
        $attr = ProductController::getAttributes($_GET['type_id']);  
        $res = $attr;        
        $this->view($res);
    }
    public function delete(){
        $arr = explode(",",$_POST['toDeleteArray']);
        foreach ($arr as $id) {
            ProductController::delete($id);
        }
    }
    public  function addProduct(){
        $attr = json_decode($_POST['attributes'],true); //array
        $_POST['attributes'] = $attr;
        $type = $_POST['type'];
        $product = new $type();
        $result = $product->productValidate();
        if($result != 'success'){
            $res['errors'] = $result; 
        }
       $this->view($res);
    }
    public function view($res)
    {
        header($this->content);
        echo json_encode($res,JSON_FORCE_OBJECT);
        die();   
    }   
}
