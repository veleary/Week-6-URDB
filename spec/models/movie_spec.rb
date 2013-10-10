require 'spec_helper'

describe Movie do
  let(:movie) { Movie.new }

  describe "#snippet" do
    context "when description is less than or equal to 50 characters" do
      it "returns the full description" do
        movie.stub(:description).and_return("When a Roman general is betrayed and his family is")
        allow(movie).to receive(:description).and_return("When a Roman general is betrayed and his family is")
        expect(movie.snippet).to eq("When a Roman general is betrayed and his family is") 
      end
    end
    context "when description is greater than 50 characters" do
      it "returns the first 47 characters and appends '...' " do 
        movie.stub(:description).and_return("When a Roman general is betrayed and his family murdered by an emperor's corrupt son, he comes to Rome as a gladiator to seek revenge.")
        allow(movie).to receive(:description).and_return("When a Roman general is betrayed and his family...")
        expect(movie.snippet).to eq("When a Roman general is betrayed and his family...")
      end
    end
  end
end
