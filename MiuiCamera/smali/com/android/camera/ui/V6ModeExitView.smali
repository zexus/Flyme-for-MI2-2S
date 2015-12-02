.class public Lcom/android/camera/ui/V6ModeExitView;
.super Landroid/widget/LinearLayout;
.source "V6ModeExitView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# instance fields
.field private mCurrentKey:Ljava/lang/String;

.field private mExitButton:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/V6ModeExitView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6ModeExitView;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private setExitButtonVisible(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    const/16 v0, 0x8

    if-ne v0, p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->expandViewTouchDelegate(Landroid/view/View;)V

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public clearExitButtonClickListener(Z)V
    .locals 2
    .param p1, "executeClick"    # Z

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    .line 71
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 72
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->updateExitButton(IZ)V

    .line 73
    return-void
.end method

.method public enableControls(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6ModeExitView;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 113
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 128
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public isCurrentExitView(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string v0, "Camera5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6ModeExitView isCurrent key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExitButtonShown()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/camera/ui/V6ModeExitView;->updateBackground()V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 78
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/ui/V6ModeExitView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/V6ModeExitView$1;-><init>(Lcom/android/camera/ui/V6ModeExitView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 39
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public setExitButtonClickListener(Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6ModeExitView setOnClickListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p2, p0, Lcom/android/camera/ui/V6ModeExitView;->mCurrentKey:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 123
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mVisible:Z

    .line 135
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateExitButton(IZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 42
    const-string v0, "Camera6"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V6ModeExitView updateExitButton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/V6ModeExitView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6ModeExitView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6ModeExitView;->setExitButtonVisible(I)V

    .line 50
    return-void

    .line 47
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
