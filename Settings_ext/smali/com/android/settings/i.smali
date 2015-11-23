.class public Lcom/android/settings_ext/i;
.super Ljava/lang/Object;
.source "AccountUnlockDialog.java"


# instance fields
.field private A:Landroid/app/AlertDialog;

.field private B:Landroid/app/ProgressDialog;

.field private C:Landroid/widget/Spinner;

.field private D:Landroid/widget/EditText;

.field private E:Landroid/widget/Button;

.field private F:Landroid/accounts/Account;

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Ljava/util/ArrayList;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private w:Ljava/lang/String;

.field private y:Landroid/security/MiuiLockPatternUtils;

.field private z:Landroid/content/Intent;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/i;->H:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    iput-object p5, p0, Lcom/android/settings_ext/i;->w:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/android/settings_ext/i;->y:Landroid/security/MiuiLockPatternUtils;

    .line 69
    iput-object p7, p0, Lcom/android/settings_ext/i;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object p8, p0, Lcom/android/settings_ext/i;->z:Landroid/content/Intent;

    .line 73
    const v0, 0x7f100008

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/i;->C:Landroid/widget/Spinner;

    .line 74
    const v0, 0x7f100009

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    .line 75
    if-eqz p9, :cond_0

    .line 76
    const-string v0, "input_password"

    invoke-virtual {p9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ext/i;->j()V

    .line 83
    new-instance v0, Lcom/android/settings_ext/j;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/j;-><init>(Lcom/android/settings_ext/i;)V

    .line 119
    iget-object v1, p0, Lcom/android/settings_ext/i;->C:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ext/i;->C:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings_ext/k;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/k;-><init>(Lcom/android/settings_ext/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 134
    const v0, 0x7f10000a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/i;->E:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/i;->E:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ext/l;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/l;-><init>(Lcom/android/settings_ext/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/i;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ext/i;->F:Landroid/accounts/Account;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)Lcom/android/settings_ext/i;
    .locals 10

    .prologue
    .line 145
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 147
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 149
    new-instance v0, Lcom/android/settings_ext/i;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/settings_ext/i;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/security/MiuiLockPatternUtils;Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/i;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->H:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/i;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ext/i;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings_ext/i;->C:Landroid/widget/Spinner;

    new-instance v1, Lcom/android/settings_ext/n;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ext/n;-><init>(Lcom/android/settings_ext/i;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/i;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->G:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/i;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/i;->k()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings_ext/i;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ext/i;->l()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/i;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/i;)Landroid/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->y:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/i;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings_ext/i;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->z:Landroid/content/Intent;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 182
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    iget-object v6, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 185
    iget-object v6, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.xiaomi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v4, v4, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ext/i;->G:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.xiaomi"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 194
    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 195
    iget-object v5, p0, Lcom/android/settings_ext/i;->H:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/i;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/settings_ext/i;->H:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings_ext/i;->F:Landroid/accounts/Account;

    .line 200
    :cond_3
    return-void

    .line 189
    :catch_0
    move-exception v4

    goto :goto_1

    .line 188
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static synthetic k(Lcom/android/settings_ext/i;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    const v1, 0x7f090d3c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 229
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/i;->F:Landroid/accounts/Account;

    if-nez v1, :cond_1

    .line 211
    invoke-direct {p0, v2}, Lcom/android/settings_ext/i;->b(Z)V

    goto :goto_0

    .line 214
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/i;->l()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 215
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v1, "password"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/i;->F:Landroid/accounts/Account;

    new-instance v4, Lcom/android/settings_ext/m;

    invoke-direct {v4, p0}, Lcom/android/settings_ext/m;-><init>(Lcom/android/settings_ext/i;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private l()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings_ext/i;->mContext:Landroid/content/Context;

    const v2, 0x7f090d3d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 165
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/i;->B:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 170
    const-string v1, "input_password"

    iget-object v2, p0, Lcom/android/settings_ext/i;->D:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings_ext/i;->A:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 156
    :cond_0
    return-void
.end method
