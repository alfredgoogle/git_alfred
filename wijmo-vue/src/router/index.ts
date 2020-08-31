import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/home",
    name: "Home",
    component: Home
  },
  {
    path: "/sss",
    name: "sss",
    component: ()=> import("../views/sss.vue")
  },
  {
    path: "/wijmo",
    name: "wijmo",
    component: ()=> import("../views/wijmo.vue")
  },
  {
    path: "/about",
    name: "About",
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () =>
      import(/* webpackChunkName: "about" */ "../views/About.vue")
  },
  {
    path: "/schedule",
    name: "Schedule",
    component: () =>
      import( "../views/Schedule.vue")
  },
  {
    path: "/schedule2",
    name: "schedule2",
    component: () =>
      import( "../views/Schedule2.vue")
  }
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes
});

export default router;
