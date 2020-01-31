require 'swagger_helper'

describe 'Animals API' do

  path '/animals' do

    post 'Creates a animal' do
      tags 'Animals'
      consumes 'application/json', 'application/xml'
      parameter name: :animal, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          species: { type: :string },
          breed: { type: :string },
          comment: { type: :text },
        },
        required: [ 'name', 'species', 'breed', 'comment' ]
      }

      response '201', 'animal created' do
        let(:animal) { { name: 'Dodo', species: 'cat', breed: 'calico', comment: 'good one' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:animal) { { name: 'invalid' } }
        run_test!
      end
    end
  end

  path '/animals/{id}' do

    get 'Retrieves a animal' do
      tags 'animals'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            name: { type: :string },
            species: { type: :string },
            breed: { type: :string },
            comment: { type: :text },
          },
          required: [ 'id', 'name', 'species', 'breed', 'comment' ]

        let(:id) { Animal.create(name: 'foo', species: 'bar', breed: 'sna', comment: 'foob').id }
        run_test!
      end

      response '404', 'animal not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
