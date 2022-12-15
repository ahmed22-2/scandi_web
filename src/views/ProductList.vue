<template>
  <div class="container">
      <header>
          <div>
              <h2>Product List</h2>
          </div>
         <div class="btns-header">
              <button class="btn"><router-link to="addproduct">ADD</router-link></button>
              <button class="btn" id="delete-product-btn" value="MASS DELETE" @click="massDelete()">MASS DELETE</button>
         </div>
      </header>      
      <hr>
      <div class="con">
          <div class="card"  v-bind:key="objData.id" v-for="objData in products" >
              <input type="checkbox" class="delete-checkbox" :id="objData.id">
              <ul>
                  <li>{{objData.sku}}</li>
                  <li>{{objData.name}}</li>
                  <li>{{objData.price}}$</li>
                  <li>{{objData.front_end}}</li>

              </ul>
          </div>
      </div>
  </div>
</template>

<script>
import axios from 'axios';
import AddProduct from './AddProduct';
export default {
  name: 'ProductList',
  components: {
  AddProduct,
},
data() {
  return {
      products: [],
      toDelete:[],
      host: "https://scandi-task-api.000webhostapp.com/"
      }
},  
methods: {
    massDelete(){
      let checks = document.getElementsByClassName("delete-checkbox");
      for(let i=0;i<checks.length;i++){
      if(checks[i].checked == true){
          this.toDelete.push(checks[i].id);
          }
      }
      var data = new FormData();
      data.append("toDeleteArray", this.toDelete);
      axios
        .post(
          this.host+"back_end/public/home/delete",data
        ).then(res => {
            if (res.data.error) {
              console.log("Error", res);

            } else {
                this.getAllData();
            }
          })
          .catch(err => {
            console.log("Error", err);
          });
      },
   getAllData(){
         axios
          .get(this.host+'back_end/public/home/getData')
            .then(res => (this.products = res.data))
            .catch(err => {
              console.log("Error", err);
            });
            console
      }
  

 
},
mounted () {
this.getAllData();
},
}
</script>



<style  scoped>
.container {
  /* position: relative; */
  height:100%;
  width: 100%;
  overflow: hidden;
}
header{
  margin-top: 50px;
  height: 40px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
.btns-header {
  margin-right: 50px;
  width: 20%;
  display: flex;
  justify-content: space-around;
}
.btn {
  color: #fff;
  border: none;
  background-color: #2298e6;
  padding: 5px;
}
.btn a {
  text-decoration: none;
  color: #fff;
}
header h2 {
  margin-left: 20px; 
}

ul {
  list-style: none;
}
.con {
  margin: 10px;
  width: 100%;
  display: flex;
  flex-wrap: wrap;
}
.card {
  position: relative;
  width: 200px;
  padding: 5px;
  margin: 10px;
  border: 1px solid #2298e6;
  background-color: #eee  ;
}

.card ul {
  margin-left: 50%;
  margin-bottom: 10px;
  transform: translateX(-70%);
  text-align: center;
  color: #000 ;
}



</style>