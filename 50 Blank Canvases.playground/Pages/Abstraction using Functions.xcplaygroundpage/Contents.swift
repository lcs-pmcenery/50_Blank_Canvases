//: [Previous](@previous) / [Next](@next)
//: # A Blank Canvas
//:
//: Use this page to experiment. Have fun!
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 700)

//where we at?
canvas.drawAxes()

// Draw the triangle up and over a bit
canvas.translate(byX: 50, byY: 25)
//now wya?
canvas.drawAxes()
//draw side 1
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)//draw
canvas.translate(byX: 80, byY: 0)//move
canvas.rotate(by: 120) //exterior angle

//draw side 2
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120)
//3
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 120)

//put axis back where it started
canvas.translate(byX: -50, byY: -25)

//square

//where we at?
canvas.drawAxes()

// Draw the rectangle up and over a bit
canvas.translate(byX: 50, byY: 125)
//now wya?
canvas.drawAxes()

canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)//draw
canvas.translate(byX: 80, byY: 0)//move
canvas.rotate(by: 90) //exterior angle

//draw side 2
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90)
//3
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90)
//4
canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
canvas.translate(byX: 80, byY: 0)
canvas.rotate(by: 90)

//put axis back where it started
canvas.translate(byX: -50, byY: -125)

//loop
canvas.translate(byX: 50, byY: 225)
for _ in 1...5 {
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 72)
}
canvas.translate(byX: -50, byY: -225)
//hexagon
canvas.translate(byX: 50, byY: 375)
for _ in 1...6 {
    canvas.drawLine(fromX: 0, fromY: 0, toX: 80, toY: 0)
    canvas.translate(byX: 80, byY: 0)
    canvas.rotate(by: 60)
}
canvas.translate(byX: -50, byY: -375)


//funticon
func drawPloygon (withsides n: Int, sidelength l: Int, startX x: Int, startY y: Int) {
    
    //Move to starting point
    canvas.translate(byX: x, byY: y)
    
    //Find interior angle
    let interior = (n-2) * 180 / n
    
    
    
    //draw sides using loop
    for _ in 1...Int(n) {
        
        // Draw the side
        canvas.drawLine(fromX: 0, fromY: 0, toX: 1, toY: 0)
        
        //Move to end of line
        canvas.translate(byX: 1, byY: 0)
        
        //rotate
        canvas.rotate(by:(Degrees(interior)))
    }
} 

//draw septagon
drawPloygon(withsides: 7, sidelength: 50, startX: 25, startY: 425)
/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView

