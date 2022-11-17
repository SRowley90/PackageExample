import Foundation
import AdapterExample
import Combine

/// Predefined topics to publish and subscribe to
struct RemoteClient: Client {
    var connectionState: AnyPublisher<Bool, Never>
    
    func connect() -> AnyPublisher<Void, AdapterExample.AdapterError> {
        return Fail(error: AdapterError.testError).eraseToAnyPublisher()
    }
    
    func disconnect() -> AnyPublisher<Void, Never> {
        return Just(Void()).eraseToAnyPublisher()
    }
    
    func subscribe(to topic: String) -> AnyPublisher<Data, AdapterExample.AdapterError> {
        return Fail(error: AdapterError.testError).eraseToAnyPublisher()
    }
    
    func publish(_ value: Data, to topic: String) -> AnyPublisher<Void, AdapterExample.AdapterError> {
        return Fail(error: AdapterError.testError).eraseToAnyPublisher()
    }
    
    func publish(_ value: Data, to topic: String) async throws {
        
    }
}
