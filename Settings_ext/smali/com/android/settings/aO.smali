.class Lcom/android/settings_ext/aO;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic fb:Lcom/android/settings_ext/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/CryptKeeper;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/CryptKeeper;Lcom/android/settings_ext/aG;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings_ext/aO;-><init>(Lcom/android/settings_ext/CryptKeeper;)V

    return-void
.end method

.method private k(I)V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->b(Lcom/android/settings_ext/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 170
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v1, "CryptKeeper"

    const-string v2, "Error while decrypting..."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/aO;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const v7, 0x7f10003a

    const/16 v6, 0x1e

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings_ext/CryptKeeper;->c(Lcom/android/settings_ext/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings_ext/CryptKeeper;->c(Lcom/android/settings_ext/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    :cond_0
    const v0, 0x7f100070

    invoke-direct {p0, v0}, Lcom/android/settings_ext/aO;->k(I)V

    .line 187
    const v0, 0x7f100071

    invoke-direct {p0, v0}, Lcom/android/settings_ext/aO;->k(I)V

    .line 188
    const v0, 0x7f10005c

    invoke-direct {p0, v0}, Lcom/android/settings_ext/aO;->k(I)V

    .line 189
    invoke-direct {p0, v7}, Lcom/android/settings_ext/aO;->k(I)V

    .line 190
    const v0, 0x7f100079

    invoke-direct {p0, v0}, Lcom/android/settings_ext/aO;->k(I)V

    .line 191
    const v0, 0x7f10006d

    invoke-direct {p0, v0}, Lcom/android/settings_ext/aO;->k(I)V

    .line 242
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "CryptKeeper.MAX_FAILED_ATTEMPTS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/CryptKeeper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 200
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    const v1, 0x7f040035

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/CryptKeeper;->setContentView(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0, v4}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;Z)V

    goto :goto_0

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings_ext/CryptKeeper;->c(Lcom/android/settings_ext/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 208
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings_ext/CryptKeeper;->c(Lcom/android/settings_ext/CryptKeeper;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6

    .line 211
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0, v6}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;I)I

    .line 212
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->d(Lcom/android/settings_ext/CryptKeeper;)V

    goto :goto_0

    .line 214
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-virtual {v0, v7}, Lcom/android/settings_ext/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1e

    .line 217
    const/16 v2, 0xa

    if-ge v1, v2, :cond_9

    .line 218
    iget-object v2, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    const v3, 0x7f0901c4

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 219
    new-array v3, v4, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 227
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->e(Lcom/android/settings_ext/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->e(Lcom/android/settings_ext/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 234
    iget-object v1, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings_ext/CryptKeeper;->e(Lcom/android/settings_ext/CryptKeeper;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 235
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0, v4}, Lcom/android/settings_ext/CryptKeeper;->b(Lcom/android/settings_ext/CryptKeeper;Z)V

    .line 237
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/aO;->fb:Lcom/android/settings_ext/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings_ext/CryptKeeper;->a(Lcom/android/settings_ext/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 223
    :cond_9
    const v1, 0x7f090803

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/aO;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
