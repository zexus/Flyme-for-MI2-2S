.class public Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

.field private mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mHex:Landroid/widget/EditText;

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mSetButton:Landroid/widget/ImageButton;

.field private mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->init(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;
    .locals 1
    .param p0, "x0"    # Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .prologue
    .line 34
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 71
    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->requestWindowFeature(I)Z

    .line 72
    invoke-direct {p0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    .line 74
    return-void
.end method

.method private setUp(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 81
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040043

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "layout":Landroid/view/View;
    invoke-virtual {p0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 85
    const v2, 0x7f090a2a

    invoke-virtual {p0, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 87
    const v2, 0x7f0f0097

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 88
    const v2, 0x7f0f009e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 89
    const v2, 0x7f0f009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 91
    const v2, 0x7f0f0098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 92
    const v2, 0x7f0f0099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 93
    const v2, 0x7f0f009a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 94
    const v2, 0x7f0f009b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 95
    const v2, 0x7f0f009c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 96
    const v2, 0x7f0f009d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 98
    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    .line 99
    const v2, 0x7f0f0096

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    .line 101
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 108
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 111
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 112
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 114
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mWhite:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 115
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mBlack:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x1000000

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 116
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mCyan:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xcc4a1b

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 117
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mRed:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/high16 v3, -0x10000

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 118
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mGreen:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const v3, -0xff0100

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 119
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mYellow:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const/16 v3, -0x100

    invoke-virtual {p0, v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V

    .line 121
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 125
    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mSetButton:Landroid/widget/ImageButton;

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;

    invoke-direct {v3, p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$1;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f009f

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->dismiss()V

    .line 197
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHex:Landroid/widget/EditText;

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 211
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 212
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 202
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "old_color"

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "new_color"

    iget-object v2, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v0, p1}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 159
    return-void
.end method

.method public setColorAndClickAction(Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;I)V
    .locals 1
    .param p1, "previewRect"    # Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;
    .param p2, "color"    # I

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {p1, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 164
    new-instance v0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;

    invoke-direct {v0, p0, p2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$2;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;I)V

    invoke-virtual {p1, v0}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 182
    iput-object p1, p0, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    .line 183
    return-void
.end method
