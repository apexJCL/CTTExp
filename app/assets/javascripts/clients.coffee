# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

modal = null
modalTitle = null
deleteButton = null
clientToDelete = null

$(document).on 'turbolinks:load', ->
  Materialize.updateTextFields()
  # For prefilled input
  $('.modal-trigger').leanModal()
# Fetch modal
  modal = $('#delete_modal')
  # Fetch modal title
  modalTitle = $('#modalheader')
  #delete button
  deleteButton = $('#delete_client')

  $('.delete-client').on 'click', (element)->
    deleteClient element.currentTarget.dataset
    return false

  deleteButton.on 'click', (e)->
    e.preventDefault()
    $.ajax '/clients/'+clientToDelete,
      type: 'delete'
      success: ->
        window.location.reload()
      error: ->
        Materialize.toast 'Ha ocurrido un error', 3000

deleteClient = (client)->
  modalTitle.html client.title
  clientToDelete = client.cid
  modal.openModal()