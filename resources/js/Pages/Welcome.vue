<script setup>
import { ref } from "vue";
const counter = ref(0);
</script>

<template>
  <div class="flex items-center justify-center h-screen bg-slate-200">
    <div class="rounded-md bg-white py-4 px-4 w-1/3 flex flex-col items-center">
      <h1 class="text-xl mb-4">Demo Vue Page</h1>
      <p>counter: {{ counter }}</p>
      <div class="flex items-center justify-center gap-x-2">
        <button class="mt-4 shadow-md rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600" type="button" @click="counter--">- Decrement</button>
        <button class="mt-4 shadow-md rounded-md bg-indigo-600 px-3.5 py-2.5 text-sm font-semibold text-white hover:bg-indigo-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600" type="button" @click="counter++">+ Increment</button>
      </div>
    </div>
  </div>
</template>
