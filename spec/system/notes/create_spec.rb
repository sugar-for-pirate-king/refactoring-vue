# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Create Note', type: :system, js: true do
  it 'returns success message' do
    visit new_note_path
    fill_in :note_title, with: 'Refactoring Vue.js'
    fill_in :note_body, with: 'Create small components'
    click_on 'Submit'
    expect(page).to have_content 'Note has been published'
  end

  it 'returns error message when title was blank' do
    visit new_note_path
    fill_in :note_title, with: ''
    fill_in :note_body, with: 'Create small components'
    click_on 'Submit'
    expect(page).to have_content "Title can't be blank"
  end

  it 'returns error message when body was blank' do
    visit new_note_path
    fill_in :note_title, with: 'Refactoring Vue.js'
    fill_in :note_body, with: ''
    click_on 'Submit'
    expect(page).to have_content "Body can't be blank"
  end
end
