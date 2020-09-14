/**
 * 
 */
package mystack;

/**
 * @author Zheming Chen
 *
 */

// Stack using generics

// Complete the provided code

public class MyStack<T> {

	private class MyNode<T1> {
		T1 val;
		MyNode<T1> next;

		MyNode(T1 v, MyNode<T1> n) {
			val = v;
			next = n;
		}
	}

	private MyNode<T> theStack = null;

	/**
	 * 
	 */
	public MyStack() {
	}

	public T pop() {
		T buffer = theStack.val;
		theStack = theStack.next;
		// TODO To complete
		return buffer;
	}

	public void push(T v) {
		theStack = new MyNode<T>(v, theStack);
		// TODO To complete
	}
    
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		 
		
		MyStack<Integer> s = new MyStack<Integer>();
		s.push(1);
		s.push(2);
		s.pop();
		s.push(5);
		// TODO To complete
		// Create a stack of Integer
		// Push 1 and 2
		// Pop
		// Push 5
		 MyStack<Person> List = new MyStack<Person>();
		Person p1 = new Person ("Zheming","Chen");
		List.push(p1);
		Person p2 = new Person ("Christelle","Scharff");
		List.push(p2);
		
		
		// TODO To complete
		// Create a stack of Person
		// Push a person p1 with your name
		// Push a person p2 with my name
	}

}
