.class public Lcom/android/settings/OwnerInfoSettings;
.super Lcom/android/settings/BaseEditFragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private cP:Lcom/android/internal/widget/LockPatternUtils;

.field private mUserId:I

.field private mView:Landroid/view/View;

.field private tI:Landroid/widget/CheckBox;

.field private tJ:Landroid/widget/EditText;

.field private tK:Landroid/widget/EditText;

.field private tL:Z

.field private tM:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->tM:Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/OwnerInfoSettings;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings/OwnerInfoSettings;->tM:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private eJ()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v1, 0x7f100171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tK:Landroid/widget/EditText;

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->tL:Z

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tK:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 94
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v2, 0x7f100170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    .line 95
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    const v2, 0x7f0901ab

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 103
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    new-instance v2, Lcom/android/settings/fh;

    invoke-direct {v2, p0}, Lcom/android/settings/fh;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v3, 0x7f100172

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/fi;

    invoke-direct {v2, p0}, Lcom/android/settings/fi;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    if-nez v1, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v1, 0x7f10016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 150
    new-instance v1, Lcom/android/settings/fj;

    invoke-direct {v1, p0}, Lcom/android/settings/fj;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    return-void

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tK:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tK:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelected(Z)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    const v2, 0x7f0901a9

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method public V()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->tM:Z

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f04009a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    .line 78
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->eJ()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method fN()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->tJ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->cP:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->tI:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "owner_info_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    iget-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->tL:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->tK:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 182
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->fN()V

    .line 196
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->h(Z)V

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/BaseEditFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_0

    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "show_nickname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/OwnerInfoSettings;->tL:Z

    .line 69
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/OwnerInfoSettings;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 189
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onDestroy()V

    .line 190
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/settings/BaseEditFragment;->onPause()V

    .line 164
    return-void
.end method
