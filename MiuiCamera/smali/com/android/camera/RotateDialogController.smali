.class public Lcom/android/camera/RotateDialogController;
.super Ljava/lang/Object;
.source "RotateDialogController.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mLayoutResourceID:I

.field private mRotateDialog:Lcom/android/camera/ui/RotateLayout;

.field private mRotateDialogButton1:Landroid/widget/TextView;

.field private mRotateDialogButton2:Landroid/widget/TextView;

.field private mRotateDialogButtonLayout:Landroid/view/View;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTitle:Landroid/widget/TextView;

.field private mRotateDialogTitleLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "layoutResource"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    .line 59
    iput p2, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    .line 60
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 63
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 65
    .local v1, "layoutRoot":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/camera/RotateDialogController;->mLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0c0032

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 68
    const v3, 0x7f0c0033

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    .line 69
    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    .line 70
    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    .line 71
    const v3, 0x7f0c0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitle:Landroid/widget/TextView;

    .line 72
    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 73
    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 74
    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    .line 75
    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    .line 77
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a0000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 79
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 81
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 82
    iget-object v3, p0, Lcom/android/camera/RotateDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 84
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layoutRoot":Landroid/view/ViewGroup;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "button1Text"    # Ljava/lang/String;
    .param p4, "r1"    # Ljava/lang/Runnable;
    .param p5, "button2Text"    # Ljava/lang/String;
    .param p6, "r2"    # Ljava/lang/Runnable;

    .prologue
    .line 160
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 166
    if-eqz p3, :cond_0

    .line 167
    new-instance v2, Lcom/android/camera/RotateDialogController$3;

    invoke-direct {v2, p4}, Lcom/android/camera/RotateDialogController$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    :cond_0
    if-eqz p5, :cond_1

    .line 177
    new-instance v2, Lcom/android/camera/RotateDialogController$4;

    invoke-direct {v2, p6}, Lcom/android/camera/RotateDialogController$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, p5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 189
    return-void
.end method

.method public static showSystemChoiceDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "choiceContent"    # Ljava/lang/String;
    .param p4, "buttonText"    # Ljava/lang/String;
    .param p5, "checkrun"    # Ljava/lang/Runnable;
    .param p6, "uncheckrun"    # Ljava/lang/Runnable;

    .prologue
    .line 193
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040018

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 197
    .local v4, "message":Landroid/view/View;
    const v5, 0x7f0c005a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 198
    .local v3, "declaration":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v5, 0x7f0c005b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 200
    .local v2, "choice":Landroid/widget/CheckBox;
    invoke-virtual {v2, p3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 205
    if-eqz p4, :cond_0

    .line 206
    new-instance v5, Lcom/android/camera/RotateDialogController$5;

    invoke-direct {v5, v2, p5, p6}, Lcom/android/camera/RotateDialogController$5;-><init>(Landroid/widget/CheckBox;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v1, p4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 222
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 223
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 224
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->fadeOutDialog()V

    .line 115
    :cond_0
    return-void
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 93
    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->inflateDialogLayout()V

    .line 94
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogTitleLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButton2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->inflateDialogLayout()V

    .line 89
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialog:Lcom/android/camera/ui/RotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 90
    return-void
.end method

.method public showWaitingDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/camera/RotateDialogController;->resetRotateDialog()V

    .line 229
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/android/camera/RotateDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/android/camera/RotateDialogController;->fadeInDialog()V

    .line 233
    return-void
.end method
