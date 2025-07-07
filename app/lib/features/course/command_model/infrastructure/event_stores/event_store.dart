

abstract class EventStore<T> {

  Stream<T> get onEvent;

  Future<List<T>> loadEvents(String aggregateName, String identifier);
  Future<void> appendEvents(String aggregateName, String identifier, List<T> events); 
}