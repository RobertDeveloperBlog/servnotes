class NotesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_note, only: %i[update destroy]

  # Получение всех заметок
  def index
    @notes = Note.all
    render json: @notes
  end

  # Создание новой заметки
  def create
    @note = Note.new(note_params)
    if @note.save
      render json: @note, status: :created
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # Обновление существующей заметки
  def update
    if @note.update(note_params)
      render json: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # Удаление заметки
  def destroy
    @note.destroy
    head :no_content
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:id, :date, :name, :comment, :priority, :deadline)
  end
end
