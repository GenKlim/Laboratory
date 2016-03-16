#pragma once
#include "GraphPoint.h"
#include "GraphRect.h"
#include "GraphLine.h"
#include "GraphCircle.h"

namespace lab7
{
	using namespace System;
	using namespace System::ComponentModel;
	using namespace System::Collections;
	using namespace System::Windows::Forms;
	using namespace System::Data;
	using namespace System::Drawing;
	using namespace System::Windows::Input;

	enum  TypeFigure
	{
		point,
		line,
		circle,
		circleFill,
		rectangle,
		rectangleFill,
		eraser
	};

	public ref class MainForm : public System::Windows::Forms::Form
	{
	public:
		Graphics^ G;
		Color color;
	private:
		int do_X, do_Y;
		bool mouseDown;

	private: System::Windows::Forms::ColorDialog^  colorDialog1;
	private: System::Windows::Forms::ToolStripSeparator^  toolStripSeparator1;
	private: System::Windows::Forms::ToolStripDropDownButton^  toolStripDropDownButton1;
	private: System::Windows::Forms::ToolStripMenuItem^  exitToolStripMenuItem;
	private: System::Windows::Forms::ToolStrip^  FigureStrip;
	private: System::Windows::Forms::ToolStripLabel^  toolStripLabel1;
	private: System::Windows::Forms::ToolStripButton^  toolStripThicknessMinus;

	private: System::Windows::Forms::ToolStripTextBox^  thickness;
	private: System::Windows::Forms::ToolStripButton^  toolStripThicknessPlus;

	private: System::Windows::Forms::ToolStripSeparator^  toolStripSeparator2;
	private: System::Windows::Forms::ToolStripButton^  toolStripPinColor;

	private: System::Windows::Forms::ToolStripButton^  toolStripButton3;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton1;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton4;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton5;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton8;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton9;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton6;
	private: System::Windows::Forms::ToolStripButton^  toolStripButton2;
	private: System::Windows::Forms::ToolStrip^  toolStrip1;
	private: System::Windows::Forms::SaveFileDialog^  saveFileDialog1;
	private: System::Windows::Forms::ToolStripMenuItem^  saveToolStripMenuItem;
	private: System::Windows::Forms::ToolStripSeparator^  toolStripSeparator3;



	public:
		TypeFigure Figure;
		Bitmap^ bmp;

		MainForm(void)
		{
			InitializeComponent();

			bmp = gcnew Bitmap(Width, Height);
			G = Graphics::FromImage(bmp);
			
			color = Color::Black;
			Figure = point;
			mouseDown = false;
		}

	protected:
		~MainForm()
		{
			if (components)
			{
				delete components;
			}
		}
	private:
		System::ComponentModel::Container ^components;

#pragma region Windows Form Designer generated code
		/// <summary>
		/// “ребуемый метод дл€ поддержки конструктора Ч не измен€йте 
		/// содержимое этого метода с помощью редактора кода.
		/// </summary>
		void InitializeComponent(void)
		{
			System::ComponentModel::ComponentResourceManager^  resources = (gcnew System::ComponentModel::ComponentResourceManager(MainForm::typeid));
			this->toolStrip1 = (gcnew System::Windows::Forms::ToolStrip());
			this->toolStripDropDownButton1 = (gcnew System::Windows::Forms::ToolStripDropDownButton());
			this->saveToolStripMenuItem = (gcnew System::Windows::Forms::ToolStripMenuItem());
			this->toolStripSeparator3 = (gcnew System::Windows::Forms::ToolStripSeparator());
			this->exitToolStripMenuItem = (gcnew System::Windows::Forms::ToolStripMenuItem());
			this->toolStripSeparator1 = (gcnew System::Windows::Forms::ToolStripSeparator());
			this->toolStripLabel1 = (gcnew System::Windows::Forms::ToolStripLabel());
			this->toolStripThicknessMinus = (gcnew System::Windows::Forms::ToolStripButton());
			this->thickness = (gcnew System::Windows::Forms::ToolStripTextBox());
			this->toolStripThicknessPlus = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripSeparator2 = (gcnew System::Windows::Forms::ToolStripSeparator());
			this->toolStripPinColor = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton6 = (gcnew System::Windows::Forms::ToolStripButton());
			this->colorDialog1 = (gcnew System::Windows::Forms::ColorDialog());
			this->FigureStrip = (gcnew System::Windows::Forms::ToolStrip());
			this->toolStripButton5 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton3 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton1 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton8 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton4 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton9 = (gcnew System::Windows::Forms::ToolStripButton());
			this->toolStripButton2 = (gcnew System::Windows::Forms::ToolStripButton());
			this->saveFileDialog1 = (gcnew System::Windows::Forms::SaveFileDialog());
			this->toolStrip1->SuspendLayout();
			this->FigureStrip->SuspendLayout();
			this->SuspendLayout();
			// 
			// toolStrip1
			// 
			this->toolStrip1->GripStyle = System::Windows::Forms::ToolStripGripStyle::Hidden;
			this->toolStrip1->Items->AddRange(gcnew cli::array< System::Windows::Forms::ToolStripItem^  >(9) {
				this->toolStripDropDownButton1,
					this->toolStripSeparator1, this->toolStripLabel1, this->toolStripThicknessMinus, this->thickness, this->toolStripThicknessPlus,
					this->toolStripSeparator2, this->toolStripPinColor, this->toolStripButton6
			});
			this->toolStrip1->Location = System::Drawing::Point(0, 0);
			this->toolStrip1->Name = L"toolStrip1";
			this->toolStrip1->Size = System::Drawing::Size(707, 25);
			this->toolStrip1->TabIndex = 0;
			this->toolStrip1->Text = L"toolStrip1";
			// 
			// toolStripDropDownButton1
			// 
			this->toolStripDropDownButton1->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Text;
			this->toolStripDropDownButton1->DropDownItems->AddRange(gcnew cli::array< System::Windows::Forms::ToolStripItem^  >(3) {
				this->saveToolStripMenuItem,
					this->toolStripSeparator3, this->exitToolStripMenuItem
			});
			this->toolStripDropDownButton1->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripDropDownButton1.Image")));
			this->toolStripDropDownButton1->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripDropDownButton1->Name = L"toolStripDropDownButton1";
			this->toolStripDropDownButton1->ShowDropDownArrow = false;
			this->toolStripDropDownButton1->Size = System::Drawing::Size(40, 22);
			this->toolStripDropDownButton1->Text = L"‘айл";
			// 
			// saveToolStripMenuItem
			// 
			this->saveToolStripMenuItem->Name = L"saveToolStripMenuItem";
			this->saveToolStripMenuItem->Size = System::Drawing::Size(162, 22);
			this->saveToolStripMenuItem->Text = L"—охранить как...";
			this->saveToolStripMenuItem->Click += gcnew System::EventHandler(this, &MainForm::saveToolStripMenuItem_Click);
			// 
			// toolStripSeparator3
			// 
			this->toolStripSeparator3->Name = L"toolStripSeparator3";
			this->toolStripSeparator3->Size = System::Drawing::Size(159, 6);
			// 
			// exitToolStripMenuItem
			// 
			this->exitToolStripMenuItem->Name = L"exitToolStripMenuItem";
			this->exitToolStripMenuItem->Size = System::Drawing::Size(162, 22);
			this->exitToolStripMenuItem->Text = L"¬ыход";
			this->exitToolStripMenuItem->Click += gcnew System::EventHandler(this, &MainForm::exit);
			// 
			// toolStripSeparator1
			// 
			this->toolStripSeparator1->Name = L"toolStripSeparator1";
			this->toolStripSeparator1->Size = System::Drawing::Size(6, 25);
			// 
			// toolStripLabel1
			// 
			this->toolStripLabel1->AutoSize = false;
			this->toolStripLabel1->DoubleClickEnabled = true;
			this->toolStripLabel1->Name = L"toolStripLabel1";
			this->toolStripLabel1->Size = System::Drawing::Size(100, 22);
			// 
			// toolStripThicknessMinus
			// 
			this->toolStripThicknessMinus->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Text;
			this->toolStripThicknessMinus->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripThicknessMinus.Image")));
			this->toolStripThicknessMinus->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripThicknessMinus->Name = L"toolStripThicknessMinus";
			this->toolStripThicknessMinus->Size = System::Drawing::Size(23, 22);
			this->toolStripThicknessMinus->Text = L"-";
			this->toolStripThicknessMinus->Click += gcnew System::EventHandler(this, &MainForm::toolStripThicknessMinus_Click);
			// 
			// thickness
			// 
			this->thickness->AutoSize = false;
			this->thickness->BackColor = System::Drawing::SystemColors::ButtonFace;
			this->thickness->BorderStyle = System::Windows::Forms::BorderStyle::None;
			this->thickness->Font = (gcnew System::Drawing::Font(L"Consolas", 12, System::Drawing::FontStyle::Bold, System::Drawing::GraphicsUnit::Point,
				static_cast<System::Byte>(204)));
			this->thickness->MaxLength = 3;
			this->thickness->Name = L"thickness";
			this->thickness->ReadOnly = true;
			this->thickness->Size = System::Drawing::Size(30, 19);
			this->thickness->Text = L"3";
			this->thickness->TextBoxTextAlign = System::Windows::Forms::HorizontalAlignment::Right;
			// 
			// toolStripThicknessPlus
			// 
			this->toolStripThicknessPlus->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Text;
			this->toolStripThicknessPlus->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripThicknessPlus.Image")));
			this->toolStripThicknessPlus->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripThicknessPlus->Name = L"toolStripThicknessPlus";
			this->toolStripThicknessPlus->Size = System::Drawing::Size(23, 22);
			this->toolStripThicknessPlus->Text = L"+";
			this->toolStripThicknessPlus->Click += gcnew System::EventHandler(this, &MainForm::toolStripThicknessPlus_Click);
			// 
			// toolStripSeparator2
			// 
			this->toolStripSeparator2->Name = L"toolStripSeparator2";
			this->toolStripSeparator2->Size = System::Drawing::Size(6, 25);
			// 
			// toolStripPinColor
			// 
			this->toolStripPinColor->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripPinColor->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripPinColor.Image")));
			this->toolStripPinColor->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripPinColor->Name = L"toolStripPinColor";
			this->toolStripPinColor->Size = System::Drawing::Size(23, 22);
			this->toolStripPinColor->Click += gcnew System::EventHandler(this, &MainForm::toolStripPicColor_Click);
			// 
			// toolStripButton6
			// 
			this->toolStripButton6->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton6->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton6.Image")));
			this->toolStripButton6->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton6->Name = L"toolStripButton6";
			this->toolStripButton6->Size = System::Drawing::Size(23, 22);
			this->toolStripButton6->Text = L"toolStripClear";
			this->toolStripButton6->Click += gcnew System::EventHandler(this, &MainForm::toolStripButton6_Click);
			// 
			// FigureStrip
			// 
			this->FigureStrip->Dock = System::Windows::Forms::DockStyle::Left;
			this->FigureStrip->GripStyle = System::Windows::Forms::ToolStripGripStyle::Hidden;
			this->FigureStrip->Items->AddRange(gcnew cli::array< System::Windows::Forms::ToolStripItem^  >(7) {
				this->toolStripButton5,
					this->toolStripButton3, this->toolStripButton1, this->toolStripButton8, this->toolStripButton4, this->toolStripButton9, this->toolStripButton2
			});
			this->FigureStrip->Location = System::Drawing::Point(0, 25);
			this->FigureStrip->Name = L"FigureStrip";
			this->FigureStrip->Padding = System::Windows::Forms::Padding(0, 20, 1, 0);
			this->FigureStrip->RenderMode = System::Windows::Forms::ToolStripRenderMode::System;
			this->FigureStrip->Size = System::Drawing::Size(24, 364);
			this->FigureStrip->TabIndex = 1;
			this->FigureStrip->Text = L"toolStrip2";
			// 
			// toolStripButton5
			// 
			this->toolStripButton5->CheckOnClick = true;
			this->toolStripButton5->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton5->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton5.Image")));
			this->toolStripButton5->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton5->Name = L"toolStripButton5";
			this->toolStripButton5->Size = System::Drawing::Size(21, 20);
			this->toolStripButton5->Tag = L"point";
			this->toolStripButton5->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton3
			// 
			this->toolStripButton3->CheckOnClick = true;
			this->toolStripButton3->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton3->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton3.Image")));
			this->toolStripButton3->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton3->Name = L"toolStripButton3";
			this->toolStripButton3->Size = System::Drawing::Size(21, 20);
			this->toolStripButton3->Tag = L"line";
			this->toolStripButton3->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton1
			// 
			this->toolStripButton1->CheckOnClick = true;
			this->toolStripButton1->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton1->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton1.Image")));
			this->toolStripButton1->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton1->Name = L"toolStripButton1";
			this->toolStripButton1->Size = System::Drawing::Size(21, 20);
			this->toolStripButton1->Tag = L"circle";
			this->toolStripButton1->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton8
			// 
			this->toolStripButton8->CheckOnClick = true;
			this->toolStripButton8->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton8->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton8.Image")));
			this->toolStripButton8->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton8->Name = L"toolStripButton8";
			this->toolStripButton8->Size = System::Drawing::Size(21, 20);
			this->toolStripButton8->Tag = L"circleFill";
			this->toolStripButton8->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton4
			// 
			this->toolStripButton4->CheckOnClick = true;
			this->toolStripButton4->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton4->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton4.Image")));
			this->toolStripButton4->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton4->Name = L"toolStripButton4";
			this->toolStripButton4->Size = System::Drawing::Size(21, 20);
			this->toolStripButton4->Tag = L"rectangle";
			this->toolStripButton4->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton9
			// 
			this->toolStripButton9->CheckOnClick = true;
			this->toolStripButton9->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton9->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton9.Image")));
			this->toolStripButton9->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton9->Name = L"toolStripButton9";
			this->toolStripButton9->Size = System::Drawing::Size(21, 20);
			this->toolStripButton9->Tag = L"rectangleFill";
			this->toolStripButton9->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// toolStripButton2
			// 
			this->toolStripButton2->CheckOnClick = true;
			this->toolStripButton2->DisplayStyle = System::Windows::Forms::ToolStripItemDisplayStyle::Image;
			this->toolStripButton2->Image = (cli::safe_cast<System::Drawing::Image^>(resources->GetObject(L"toolStripButton2.Image")));
			this->toolStripButton2->ImageTransparentColor = System::Drawing::Color::Magenta;
			this->toolStripButton2->Name = L"toolStripButton2";
			this->toolStripButton2->Size = System::Drawing::Size(21, 20);
			this->toolStripButton2->Tag = L"eraser";
			this->toolStripButton2->Click += gcnew System::EventHandler(this, &MainForm::toolStripFigure_Click);
			// 
			// saveFileDialog1
			// 
			this->saveFileDialog1->Filter = L"Bitmap|*.bmp";
			// 
			// MainForm
			// 
			this->AutoScaleDimensions = System::Drawing::SizeF(6, 13);
			this->AutoScaleMode = System::Windows::Forms::AutoScaleMode::Font;
			this->BackColor = System::Drawing::Color::White;
			this->ClientSize = System::Drawing::Size(707, 389);
			this->Controls->Add(this->FigureStrip);
			this->Controls->Add(this->toolStrip1);
			this->MaximumSize = System::Drawing::Size(723, 428);
			this->MinimumSize = System::Drawing::Size(723, 428);
			this->Name = L"MainForm";
			this->Tag = L"point";
			this->Text = L"–исовалка";
			this->MouseDown += gcnew System::Windows::Forms::MouseEventHandler(this, &MainForm::DoDraw);
			this->MouseMove += gcnew System::Windows::Forms::MouseEventHandler(this, &MainForm::MainForm_MouseMove);
			this->MouseUp += gcnew System::Windows::Forms::MouseEventHandler(this, &MainForm::OnDraw);
			this->toolStrip1->ResumeLayout(false);
			this->toolStrip1->PerformLayout();
			this->FigureStrip->ResumeLayout(false);
			this->FigureStrip->PerformLayout();
			this->ResumeLayout(false);
			this->PerformLayout();

		}
#pragma endregion
	private: System::Void toolStripPicColor_Click(System::Object^  sender, System::EventArgs^  e)
	{
		if (colorDialog1->ShowDialog() == System::Windows::Forms::DialogResult::OK)
			color = colorDialog1->Color;
	}

	private: System::Void DoDraw(System::Object^  sender, System::Windows::Forms::MouseEventArgs^  e)
	{
		do_X = e->X;
		do_Y = e->Y;
		mouseDown = true;
	}

	private: System::Void OnDraw(System::Object^  sender, System::Windows::Forms::MouseEventArgs^  e)
	{
		mouseDown = false;
		GraphObject^ obj;
		switch (Figure)
		{
		case point:
			obj = gcnew GraphPoint(G, e->X, e->Y);
			break;
		case line:
			obj = gcnew GraphLine(G, do_X, do_Y, e->X, e->Y);
			break;
		case rectangle:
			obj = gcnew GraphRect(G, do_X, do_Y, e->X - do_X, e->Y - do_Y, false);
			break;
		case rectangleFill:
			obj = gcnew GraphRect(G, do_X, do_Y, e->X - do_X, e->Y - do_Y, true);
			break;
		case circle:
			obj = gcnew GraphCircle(G, do_X, do_Y, e->X - do_X, e->Y - do_Y, false);
			break;
		case circleFill:
			obj = gcnew GraphCircle(G, do_X, do_Y, e->X - do_X, e->Y - do_Y, true);
			break;
		default:
			return;
		}

		obj->thickness = int::Parse(thickness->Text);
		obj->SetColor(color);
		obj->Drow(G);
		BackgroundImage = nullptr;
		BackgroundImage = bmp;
	}

	private: System::Void MainForm_MouseMove(System::Object^  sender, System::Windows::Forms::MouseEventArgs^  e)
	{
		int t = int::Parse(thickness->Text);
		if (mouseDown && Figure == eraser)
			G->FillEllipse(gcnew SolidBrush(Color::White), (int)(e->X - t / 2), (int)(e->Y - t / 2), t, t);
	}

	private: System::Void toolStripFigure_Click(System::Object^  sender, System::EventArgs^  e)
	{
		for each (ToolStripButton^ btn in FigureStrip->Items)
			btn->Checked = false;

		ToolStripButton^ bSender = (ToolStripButton^)sender;
		bSender->Checked = true;
		String^ tag = (String ^)bSender->Tag;

		if (tag == "point")
			Figure = point;
		else if (tag == "line")
			Figure = line;
		else if (tag == "circle")
			Figure = circle;
		else if (tag == "circleFill")
			Figure = circleFill;
		else if (tag == "rectangle")
			Figure = rectangle;
		else if (tag == "rectangleFill")
			Figure = rectangleFill;
		else if (tag == "eraser")
			Figure = eraser;
	}

	private: System::Void toolStripThicknessMinus_Click(System::Object^  sender, System::EventArgs^  e)
	{
		thickness->Text = (int::Parse(thickness->Text) - 1).ToString();
	}

	private: System::Void toolStripThicknessPlus_Click(System::Object^  sender, System::EventArgs^  e)
	{
		thickness->Text = (int::Parse(thickness->Text) + 1).ToString();
	}

	private: System::Void exit(System::Object^  sender, System::EventArgs^  e)
	{
		Close();
	}

	private: System::Void toolStripButton6_Click(System::Object^  sender, System::EventArgs^  e)
	{
		G->Clear(Color::White);
	}

	private: System::Void saveToolStripMenuItem_Click(System::Object^  sender, System::EventArgs^  e)
	{
		if (saveFileDialog1->ShowDialog() == System::Windows::Forms::DialogResult::OK)
			bmp->Save(saveFileDialog1->FileName);
	}
	};
}