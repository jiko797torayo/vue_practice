<template>
  <div>
    <router-view></router-view>
  </div>
</template>

<script>
import Vue from 'vue'
import VueRouter from 'vue-router'
import EmployeeIndexPage from 'EmployeeIndexPage.vue'
import EmployeeDetailPage from 'EmployeeDetailPage.vue'

const router = new VueRouter({
  routes: [
    { path: '/',
      component: EmployeeIndexPage },
    { path: '/employees/:id(\\d+)',
      name: 'EmployeeDetailPage',
      component: EmployeeDetailPage }
  ]
})

Vue.use(VueRouter)
export default {
  router
}
</script>

<style scoped>
</style>
