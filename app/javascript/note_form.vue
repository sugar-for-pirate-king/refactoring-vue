<template>
  <div id="note-form">
    <alert-success :message="successMessage"></alert-success>
    <alert-errors :errors="errors"></alert-errors>
    <div class="form-group row">
      <label for="note_title" class="col-form-label col-md-4">Title</label>
      <div class="col-md-8">
        <input type="text" id="note_title" v-model="note.title" class="form-control">
      </div>
    </div>
    <div class="form-group row">
      <label for="note_body" class="col-form-label col-md-4">Body</label>
      <div class="col-md-8">
        <input type="text" id="note_body" v-model="note.body" class="form-control">
      </div>
    </div>
    <button @click="submit()" class="btn btn-primary btn-block">Submit</button>
  </div>
</template>

<script>
import AlertSuccess from "alert/success.vue";
import AlertErrors from "alert/errors.vue";

export default {
  name: "NoteForm",
  data() {
    return {
      successMessage: "",
      errors: [],
      note: {
        title: "",
        body: ""
      }
    };
  },
  methods: {
    submit() {
      this.errors = [];
      this.validation(this.note);
      if (this.errors.length > 0) {
        return false;
      }
      this.successMessage = "Note has been published";
    },
    validation(note) {
      let message = "";
      if (note.title == "") {
        message = "Title can't be blank";
        this.errors.push(message);
      }
      if (note.body == "") {
        message = "Body can't be blank";
        this.errors.push(message);
      }
    }
  },
  components: { AlertSuccess, AlertErrors }
};
</script>