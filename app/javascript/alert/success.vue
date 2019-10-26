<template>
  <div id="alert-success">
    <div v-if="message != ''">
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <span>{{ message }}</span>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "AlertSuccess",
  props: {
    message: String
  },
  mounted() {
    console.log(this.message);
  }
};
</script>