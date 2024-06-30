//
//  ContentView.swift
//  HomeWork3
//
//  Created by 乙酸王 on 2023/6/2.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    //    @State private var num1 = 0.0
    //    @State private var num2 = 0.0
    @State private var text1 = "0.0"
    @State private var text2 = "0.0"
    @State private var res = ""
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
        animation: .default)
    private var items: FetchedResults<Item>
    
    var body: some View {
        // 使用NavigationView包裹整个界面，以便添加导航栏
        NavigationView {
            // 使用VStack垂直排列子视图
            VStack {
                
                HStack{
                    Text("第一个数：")
                    // 使用TextField显示文本框
                    TextField("num1", text: $text1) // 绑定状态变量username
                        .padding() // 添加内边距
                        .border(Color.gray) // 添加边框颜色
                }
                .padding(.all,30)
                
                HStack{
                    Text("第二个数：")
                    // 使用TextField显示文本框
                    TextField("num2", text:$text2) // 绑定状态变量username
                        .padding() // 添加内边距
                        .border(Color.gray) // 添加边框颜色
                }
                .padding(.all,30)
                
                
                // 使用Text显示标题
                Text("\(res)")
                    .font(.largeTitle) // 设置字体大小
                    .padding() // 添加内边距
                
                VStack{
                    HStack{
                        Spacer()
                        
                        HStack{
                            // 使用Button显示按钮
                            Button("+") {
                                // 在这里添加登录逻辑
                                res = String(format:"%.2f", Double(text1)! + Double(text2)! )
                            }
                            .font(.title)
                            .frame(width: 100)
                        }
                        .padding() // 添加内边距
                        .foregroundColor(.white) // 设置前景色为白色
                        .background(Color.blue) // 设置背景色为蓝色
                        .cornerRadius(10) // 设置圆角半径为10
                        
                        Spacer()
                        
                        HStack{
                            
                            // 使用Button显示按钮
                            Button("-") {
                                // 在这里添加登录逻辑
                                res = String(format:"%.2f", Double(text1)! - Double(text2)!)
                            }
                            .font(.title)
                            .frame(width: 100)
                        }
                        .padding() // 添加内边距
                        .foregroundColor(.white) // 设置前景色为白色
                        .background(Color.blue) // 设置背景色为蓝色
                        .cornerRadius(10) // 设置圆角半径为10
                        
                        Spacer()
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    HStack{
                        Spacer()
                        
                        HStack{
                            // 使用Button显示按钮
                            Button("*") {
                                // 在这里添加登录逻辑
                                res = String(format:"%.2f", Double(text1)! * Double(text2)!)
                            }
                            .font(.title)
                            .frame(width: 100)
                        }
                        .padding() // 添加内边距
                        .foregroundColor(.white) // 设置前景色为白色
                        .background(Color.blue) // 设置背景色为蓝色
                        .cornerRadius(10) // 设置圆角半径为10
                        
                        Spacer()
                        
                        HStack{
                            
                            // 使用Button显示按钮
                            Button("/") {
                                // 在这里添加登录逻辑
                                res = String(format:"%.2f", Double(text1)! / Double(text2)!)
                            }
                            .font(.title)
                            .frame(width: 100)
                        }
                        .padding() // 添加内边距
                        .foregroundColor(.white) // 设置前景色为白色
                        .background(Color.blue) // 设置背景色为蓝色
                        .cornerRadius(10) // 设置圆角半径为10
                        
                        Spacer()
                    }
                    
                }
                
                
                // 使用Spacer占据剩余空间，使子视图靠上对齐
                Spacer()
            }
            .navigationBarTitle("Homework2") // 设置导航栏标题为“登录”
        }
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
