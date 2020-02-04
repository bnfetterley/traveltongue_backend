class ExampleClass

    attr_reader :firebase
    
    def initialize
      @firebase = Firebase::Client.new(ENV[‘https://travelingtongue-65ade.firebaseapp.com/home’], 
      ENV[‘FIREBASE_DATABASE_SECRET’])
    end
    
    def get(path)
     @firebase.get(path)
     end
    
    def set(path, data)
     @firebase.set(path, data)
     end
    
    def delete(path)
     @firebase.delete(path)
     end
    
    def push(path, data)
     @firebase.push(path, data)
     end
    
    def update(path, data)
     @firebase.update(path, data)
     end
    
    end