//
//  HomeView.swift
//  DesignDemo (iOS)
//
//  Created by Luciano Nicolini on 14/04/2022.
//

import SwiftUI

struct HomeView: View {
    var course: Course = courses[0]
    @Namespace var namespace
    @State var show = false
    @State var hasScrolled = false
    @State var showStatusBar = true
    @State var selectedID = UUID()
    @EnvironmentObject var model: Model
    
    var body: some View {
        ZStack {
            //FondoDePantalla
            Color("Blanco").ignoresSafeArea()
            ScrollView {
                //PARTE1
                scrollDectection
                Feactured
                Text("Courses".uppercased())
                    .font(.footnote.weight(.semibold))
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 20)
               
                //PARTE2
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 300),spacing: 20)], spacing: 20) {
                    if !show {
                        cards
                    } else {
                        ForEach(courses) { course in
                            Rectangle()
                                .fill(.white)
                                .frame(height: 300)
                                .cornerRadius(30)
                                .shadow(color: Color("Shadow").opacity(0.2), radius: 20, x: 0, y: 10)
                                .opacity(0.3)
                                .padding(.horizontal, 20)
                        }
                    }
                }
                
                .padding(.horizontal,20)
                Color.clear.frame(height: 1000)
            }
            .coordinateSpace(name: "scroll")
            .safeAreaInset(edge: .top, content:  {
                Color.clear.frame(height: 70)
            })
            //TITULO
            .overlay(
                NavigationBar(tilte: "Welcome", hasScrolled: $hasScrolled)
                
            )
            //PARTE2
            if show {
                detail
            }
        }
        .statusBar(hidden: !showStatusBar)
        .onChange(of: show) { newValue in
            withAnimation(.closeCard) {
                if newValue {
                    showStatusBar = false
                } else {
                    showStatusBar = true
                }
            }
        }
    }
    
    var detail: some View {
        ForEach(courses) { course in
            if course.id == selectedID {
                CourseView(namespace: namespace, show: $show, course: course)
                    .zIndex(1)
                    .transition(
                        .asymmetric(
                            insertion: .opacity.animation(.easeInOut(duration: 0.1)),
                            removal: .opacity.animation(.easeInOut(duration: 0.3).delay(0.2))
                        )
                    )
            }
        }
    }
    var cards: some View {
        ForEach(courses) { course in
            CourseItem(namespace: namespace, show: $show, course: course)
                .onTapGesture {
                    withAnimation(.openCard) {
                        show.toggle()
                        model.showDetail.toggle()
                        showStatusBar = false
                        selectedID = course.id
                        
                    }
                }
        }
    }
    
    
    //Confiuracion scroll-TITULO
    var scrollDectection: some View {
        GeometryReader { proxy in
            // Text("\(proxy.frame(in: .named("sc")).minX)")
            Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("sc")).maxY)
        }
        .frame(height: 0)
        .onPreferenceChange(ScrollPreferenceKey.self,perform: { value
            in
            withAnimation(.easeInOut) {
                if value < 0 {
                    hasScrolled = true
                } else  {
                    hasScrolled = false
                }
            }
        })
    }
    
    //Configuracion PARTE1
    var Feactured: some View {
        TabView {
            ForEach(featuredCourses) { course in
                GeometryReader { proxy in
                    let minX = proxy.frame(in: .global).minX
                    FeacturedItem(course: course)
                        .frame(maxWidth: 500)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical,40)
                    //EfectoRotacionViewCard
                        .rotation3DEffect(.degrees(minX / -10), axis: (x: 0, y: 1, z: 0))
                        .shadow(color: Color("Blanco").opacity(0.3), radius: 10, x: 0, y: 10)
                    // .blur(radius: abs(minX / 40))
                        .overlay(
                            Image(course.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 230)
                                .offset(x: 32, y: -80)
                                .offset(x: minX / 2)
                            
                        )
                }
            }
        }
        .tabViewStyle(.page)
        .frame(height: 430)
        .background(Image("Blob 1"))
        .offset(y: -35)
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        //.preferredColorScheme(.dark)
        .environmentObject(Model())
    }
}


