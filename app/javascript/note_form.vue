<template>
  <div id="note-form">
    <span v-if="successMessage">{{ successMessage }}</span>
    <div v-if="errors.length > 0">
      <li v-for="error of errors" :key="error">{{ error }}</li>
    </div>
    <input type="text" id="note_title" v-model="note.title">
    <input type="text" id="note_body" v-model="note.body">
    <button @click="submit()">Submit</button>
  </div>
</template>

<script>
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
  }
};
</script>