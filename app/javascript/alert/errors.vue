<template>
  <div id="alert-errors">
    <div v-if="errors.length > 0">
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <li v-for="error of errors" :key="error">{{ error }}</li>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "AlertErrors",
  props: {
    errors: Array
  }
};
</script>