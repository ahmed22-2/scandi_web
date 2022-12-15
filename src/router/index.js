import Vue from 'vue'
import VueRouter from 'vue-router'
import ProductList from '../views/ProductList.vue'
import AddProduct from '../views/AddProduct.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '/',
    name: 'ProductList',
    component: ProductList
  },
  {
    path: '/addproduct',
    name: 'addproduct',
    component: AddProduct
  }
]

const router = new VueRouter({
  routes
})

export default router
