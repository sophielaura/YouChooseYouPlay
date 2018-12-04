//
//  SecondViewController.swift
//  YouChooseYouPlay
//
//  Created by User13 on 2018/12/4.
//  Copyright © 2018 Laura. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var hiddenView: UIView!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int = 0
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    var count: Int=0
    var number: Int = 0
    var numberCheck = [Int]()
    
    class qna{
        let question: String
        var choice: [String]=Array()
        let answer: Int
        
        init(q: String, choice: [String]=Array(), a: Int){
            question=q
            self.choice.insert(choice[0], at: 0)
            self.choice.insert(choice[1], at: 1)
            self.choice.insert(choice[2], at: 2)
            self.choice.insert(choice[3], at: 3)
            answer=a
        }
    }
    var questionSet=[qna]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        questionImageView.transform = CGAffineTransform(rotationAngle: 0.15);
        
        numberCheck = [Int]()
        count=0
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
       
        
        
        var check: Bool=true
        if count<10{
            repeat{
                number=Int.random(in: 0...10)
                if !numberCheck.isEmpty{
                    for i in 0...(numberCheck.count-1) {
                        if numberCheck[i] != number{
                            
                            check=false
                            print(number)
                            print("a")
                            print(numberCheck)
                            
                            
                        }
                        else{
                            check=true
                            
                            print(number)
                            print("same")
                            break
                        }
                    }
                }
                else{
                    check=false
                    print(number)
                    print("b")
                    print(numberCheck)
                }
            }while check
        }
        
        numberCheck.append(number)
        
        
        var k: qna
        var choiceSet=[String]()

        
        //第０題
        choiceSet.insert("One Direction: Perfect", at: 0)
        choiceSet.insert("Ed Sheeran: Perfect", at: 1)
        choiceSet.insert("Ed Sheeran: Thinking Out Loud", at: 2)
        choiceSet.insert("Simple Plan: Perfect", at: 3)
        k=qna(q: "Baby, I'm dancing in the dark with you between my arms. Barefoot on the grass, listening to our favorite song", choice: choiceSet, a: 1)
        questionSet.insert(k, at: 0)
        
        //第１題
        choiceSet.insert("Ed Sheeran: Happier", at: 0)
        choiceSet.insert("Marshmello: Alone", at: 1)
        choiceSet.insert("Charlie Puth: attention", at: 2)
        choiceSet.insert("Marshmello ft.Bastille: Happier", at: 3)
        k=qna(q: "Ain't nobody hurt you like I hurt you. But ain't nobody love you like I do", choice: choiceSet, a: 0)
        questionSet.insert(k, at: 1)
        
        //第２題
        choiceSet.insert("Justin Bieber: Dream Smasher", at: 0)
        choiceSet.insert("Nelly: Just a Dream", at: 1)
        choiceSet.insert("Selena Gomez, Alan Walker, Kygo: Dream", at: 2)
        choiceSet.insert("Jon Secada, Rebecca Holden: Dreams Come True", at: 3)
        k=qna(q: "I was thinking bout her, thinkin' bout me. Thinkin' bout us, what we gon' be", choice: choiceSet, a: 1)
        questionSet.insert(k, at: 2)
        
        //第３題
        choiceSet.insert("Chainsmokers ft. Daya: Don't Let Me Down", at: 0)
        choiceSet.insert("ColdPlay: Yellow", at: 1)
        choiceSet.insert("Justin Bieber: Beauty And A Beat", at: 2)
        choiceSet.insert("DJ Snake ft. Justin Bieber: Let Me Love You", at: 3)
        k=qna(q: "Say, go through the darkest of days. Heaven's a heartbreak away", choice: choiceSet, a: 3)
        questionSet.insert(k, at: 3)
        
        //第４題
        choiceSet.insert("One Republic: Counting Stars", at: 0)
        choiceSet.insert("Maroon 5: Lost Stars", at: 1)
        choiceSet.insert("Taylor Swift: Untouchable", at: 2)
        choiceSet.insert("Anne-Marie: 2002", at: 3)
        k=qna(q: "I see this life. Like a swinging vine. Swing my heart across the line", choice: choiceSet, a: 0)
        questionSet.insert(k, at: 4)
        
        //第５題
        choiceSet.insert("Bruno Mars: Talking To The Moon", at: 0)
        choiceSet.insert("LeAnn Rimes: Can't Fight The Moonlight", at: 1)
        choiceSet.insert("Lea Salonga: Sun And Moon", at: 2)
        choiceSet.insert("One Republic: Counting Stars", at: 3)
        k=qna(q: "Underneath the starlight, starlight. There's a magical feeling, so right", choice: choiceSet, a: 1)
        questionSet.insert(k, at: 5)
        
        //第６題
        choiceSet.insert("Calum Scott: You Are The Reason", at: 0)
        choiceSet.insert("One Direction: Story Of My Life", at: 1)
        choiceSet.insert("James Arthur: Say You Won't Let Go", at: 2)
        choiceSet.insert("Niall Horan: This Town", at: 3)
        k=qna(q: "I'd climb every mountain. And swim every ocean", choice: choiceSet, a: 0)
        questionSet.insert(k, at: 6)
        
        //第７題
        choiceSet.insert("Fifth Hormany: Work", at: 0)
        choiceSet.insert("Camila Cabello: Never Be The Same", at: 1)
        choiceSet.insert("Shawn Mendes: There's Nothing Holdin' Me Back", at: 2)
        choiceSet.insert("Marshmello ft. Anne_marie: Friends", at: 3)
        k=qna(q: "She says that she's never afraid. Just picture everybody naked", choice: choiceSet, a: 2)
        questionSet.insert(k, at: 7)
        
        //第８題
        choiceSet.insert("Justin Bieber: Boyfriend", at: 0)
        choiceSet.insert("Camila Cabello: Havana", at: 1)
        choiceSet.insert("Luis Fonsi, Daddy Yankee: Despacito", at: 2)
        choiceSet.insert("Sam Smith: Too Good At Goodbyes", at:3)
        k=qna(q: "SFirmo en las paredes de tu laberinto. Y hacer de tu cuerpo todo un manuscrito (sube, sube, sube) (Sube, sube)", choice: choiceSet, a: 2)
        questionSet.insert(k, at: 8)
        
        //第９題
        choiceSet.insert("Tim McGraw, Faith Hill: Speak To A Girl", at: 0)
        choiceSet.insert("Linkin Park: Papercut", at: 1)
        choiceSet.insert("Clean Bandit ft. Anne_Marie: Rockabye", at: 2)
        choiceSet.insert("Eminem ft. Rihanna: Love The Way You Lie", at:3)
        k=qna(q: "I can't tell you what it really is. I can only tell you what it feels like", choice: choiceSet, a: 3)
        questionSet.insert(k, at: 9)
        
        //第１０題
        choiceSet.insert("The Wanted: Glad You Came", at: 0)
        choiceSet.insert("Backstreet Boys: I Want It That Way", at: 1)
        choiceSet.insert("Katy Perry ft. Skip Marley: Chained To The Rhythm", at: 2)
        choiceSet.insert("Justin Timberlake: Can't Stop The Feeling", at:3)
        k=qna(q: "Are we crazy? Livin' our lives through a lens. Trapped in our white picket fence", choice: choiceSet, a: 2)
        
        questionSet.insert(k, at: 10)
        
        button1.titleLabel?.lineBreakMode = .byWordWrapping
        button2.titleLabel?.lineBreakMode = .byWordWrapping
        button3.titleLabel?.lineBreakMode = .byWordWrapping
        button4.titleLabel?.lineBreakMode = .byWordWrapping
        
        //Question input
        questionLabel.text=questionSet[number].question
        button1.setTitle(questionSet[number].choice[0], for: .normal)
        button2.setTitle(questionSet[number].choice[1], for: .normal)
        button3.setTitle(questionSet[number].choice[2], for: .normal)
        button4.setTitle(questionSet[number].choice[3], for: .normal)
        //count+=1
    }
    
    
    @IBAction func button1Pressed(_ sender: Any) {
        
        if questionSet[number].answer==0{
            score+=10
            scoreLabel.text=String(score)
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            else{
                viewWillAppear(true)
            }
        }
        else{
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            viewWillAppear(true)
        }
        
    }
    @IBAction func button2Pressed(_ sender: Any) {
        if questionSet[number].answer==1{
            score+=10
            scoreLabel.text=String(score)
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            else{
                viewWillAppear(true)
            }
        }
        else{
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            viewWillAppear(true)
        }
    }
    @IBAction func button3Pressed(_ sender: Any) {
        if questionSet[number].answer==2{
            score+=10
            scoreLabel.text=String(score)
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            else{
                viewWillAppear(true)
            }
        }
        else{
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            viewWillAppear(true)
        }
    }
    @IBAction func button4Pressed(_ sender: Any) {
        if questionSet[number].answer==3{
            score+=10
            scoreLabel.text=String(score)
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            else{
                viewWillAppear(true)
            }
        }
        else{
            count+=1
            if count==10{
                totalScoreLabel.text=String(score)
                hiddenView.isHidden=false
            }
            viewWillAppear(true)
        }
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
