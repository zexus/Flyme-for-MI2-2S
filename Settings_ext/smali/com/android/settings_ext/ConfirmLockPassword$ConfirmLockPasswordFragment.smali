.class public Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field protected cP:Lcom/android/internal/widget/LockPatternUtils;

.field protected cQ:Landroid/widget/TextView;

.field private db:Landroid/widget/TextView;

.field private ef:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private eh:Landroid/widget/Button;

.field private ei:I

.field private ej:Landroid/os/CountDownTimer;

.field private ek:Z

.field private final el:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 301
    new-instance v0, Lcom/android/settings_ext/au;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/au;-><init>(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->el:Ljava/lang/Runnable;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ei:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(IJ)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->el:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->el:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 315
    :cond_0
    return-void
.end method

.method private aC()I
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ek:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0904e3

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0904e5

    goto :goto_0
.end method

.method private ap()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ext/ConfirmLockPassword$InternalActivity;

    if-eqz v0, :cond_0

    .line 221
    const-string v3, "type"

    iget-boolean v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ek:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v0, "password"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 240
    :goto_1
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 237
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->aD()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;)I
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->aC()I

    move-result v0

    return v0
.end method

.method private c(J)V
    .locals 7

    .prologue
    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 255
    const v0, 0x7f090508

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(IJ)V

    .line 256
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    new-instance v0, Lcom/android/settings_ext/at;

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/at;-><init>(Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings_ext/at;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ej:Landroid/os/CountDownTimer;

    .line 276
    return-void
.end method


# virtual methods
.method protected aD()V
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ei:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ei:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 246
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->c(J)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    const v0, 0x7f0904f1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->j(I)V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eh:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 338
    return-void

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method protected j(I)V
    .locals 2

    .prologue
    .line 298
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->a(IJ)V

    .line 299
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 283
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ap()V

    goto :goto_0

    .line 289
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x7f10005d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ei:I

    .line 119
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "miui_password_type"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 130
    const v0, 0x7f040028

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 136
    const v0, 0x7f10005d

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f10005e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eh:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eh:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eh:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    const v0, 0x7f100059

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    const v0, 0x7f10005a

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 147
    const v0, 0x7f100057

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    .line 148
    const/high16 v0, 0x40000

    if-eq v0, v3, :cond_0

    const/high16 v0, 0x50000

    if-eq v0, v3, :cond_0

    const/high16 v0, 0x60000

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ek:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_2

    .line 154
    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->aC()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->db:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    new-instance v3, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v5, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget-object v6, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-direct {v3, v0, v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ef:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 164
    iget-object v3, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ef:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v5, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ek:Z

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 169
    iget-object v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cQ:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ek:Z

    if-eqz v3, :cond_6

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 173
    instance-of v1, v0, Lcom/android/settings_ext/gh;

    if-eqz v1, :cond_3

    .line 174
    check-cast v0, Lcom/android/settings_ext/gh;

    .line 175
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->aC()I

    move-result v1

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lcom/android/settings_ext/gh;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    :cond_3
    return-object v4

    :cond_4
    move v0, v1

    .line 148
    goto :goto_0

    :cond_5
    move v1, v2

    .line 164
    goto :goto_1

    .line 170
    :cond_6
    const/16 v1, 0x12

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 320
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ap()V

    .line 324
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ej:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ej:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ej:Landroid/os/CountDownTimer;

    .line 196
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->eg:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->requestFocus()Z

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->cP:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 204
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->c(J)V

    .line 207
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings_ext/ConfirmLockPassword$ConfirmLockPasswordFragment;->ei:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method
