.class public Lcom/android/settings_ext/widget/SwitchBar;
.super Landroid/widget/LinearLayout;
.source "SwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static arR:[I


# instance fields
.field private arO:Lcom/android/settings_ext/widget/ToggleSwitch;

.field private arP:Landroid/widget/TextView;

.field private arQ:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/widget/SwitchBar;->arR:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f01001e
        0x7f01001f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ext/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings_ext/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 76
    sget-object v0, Lcom/android/settings_ext/widget/SwitchBar;->arR:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    const v0, 0x7f10029e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arP:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arP:Landroid/widget/TextView;

    const v3, 0x7f090a10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arP:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 86
    const v0, 0x7f10029f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/ToggleSwitch;

    iput-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    .line 89
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0, v4}, Lcom/android/settings_ext/widget/ToggleSwitch;->setSaveEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ToggleSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 91
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    new-instance v0, Lcom/android/settings_ext/widget/H;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/widget/H;-><init>(Lcom/android/settings_ext/widget/SwitchBar;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->a(Lcom/android/settings_ext/widget/I;)V

    .line 100
    invoke-virtual {p0, p0}, Lcom/android/settings_ext/widget/SwitchBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->setVisibility(I)V

    .line 104
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/I;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add twice the same OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public aZ(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/settings_ext/widget/SwitchBar;->arP:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f090a0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 108
    return-void

    .line 107
    :cond_0
    const v0, 0x7f090a10

    goto :goto_0
.end method

.method public b(Lcom/android/settings_ext/widget/I;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot remove OnSwitchChangeListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public ba(Z)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/SwitchBar;->aZ(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/widget/ToggleSwitch;->ba(Z)V

    .line 118
    return-void
.end method

.method public bb(Z)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 161
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arQ:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/I;

    iget-object v3, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-interface {v0, v3, p1}, Lcom/android/settings_ext/widget/I;->a(Landroid/widget/Switch;Z)V

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/SwitchBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/widget/SwitchBar;->bb(Z)V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 156
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->setChecked(Z)V

    .line 157
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 241
    check-cast p1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;

    .line 243
    invoke-virtual {p1}, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    iget-boolean v1, p1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ToggleSwitch;->ba(Z)V

    .line 246
    iget-boolean v0, p1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->checked:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->aZ(Z)V

    .line 247
    iget-boolean v0, p1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/widget/SwitchBar;->setVisibility(I)V

    .line 248
    iget-object v1, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    iget-boolean v0, p1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->visible:Z

    if-eqz v0, :cond_1

    move-object v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/SwitchBar;->requestLayout()V

    .line 251
    return-void

    .line 247
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 233
    new-instance v1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings_ext/widget/SwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ToggleSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->checked:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/SwitchBar;->isShowing()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings_ext/widget/SwitchBar$SavedState;->visible:Z

    .line 236
    return-object v1
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/widget/SwitchBar;->aZ(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/widget/ToggleSwitch;->setChecked(Z)V

    .line 113
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arP:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/widget/ToggleSwitch;->setEnabled(Z)V

    .line 128
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/widget/SwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/ToggleSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final tM()Lcom/android/settings_ext/widget/ToggleSwitch;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ext/widget/SwitchBar;->arO:Lcom/android/settings_ext/widget/ToggleSwitch;

    return-object v0
.end method
