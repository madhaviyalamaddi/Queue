//Queue implementation
class QueueDS<T: Equatable> {
    private var items: [T]
    
    init(with items: [T]) {
        self.items = items
    }
    
    var front: T? {
        return items.first
    }
    var rear: T? {
        return items.last
    }
    
    public func isEmpty() -> Bool {
        return items.isEmpty
    }
    
    public func enqueue(_ element: T) {
        items.append(element)
    }
    
    public func dequeue() -> T? {
        guard !items.isEmpty else { return nil }
        return items.removeFirst()
    }
    
    public func printQueueDS() {
        items.map({print($0)})
    }
    
    deinit {
        print("queue deinit called")
    }
}

var queueDs = QueueDS<Int>(with: [])
queueDs.enqueue(10)
queueDs.enqueue(20)
queueDs.enqueue(30)
queueDs.enqueue(40)

queueDs.dequeue()
queueDs.printQueueDS()

var charQueue = QueueDS<String>(with: ["one", "two", "three", "four"])
charQueue.dequeue()
charQueue.printQueueDS()

