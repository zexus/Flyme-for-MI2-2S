.class Lcom/android/settings/aI;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# instance fields
.field final synthetic fb:Lcom/android/settings/CryptKeeper;

.field fc:Ljava/lang/String;

.field fd:Z

.field type:I


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/aI;->type:I

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 437
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aI;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 446
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v1

    iput v1, p0, Lcom/android/settings/aI;->type:I

    .line 447
    const-string v1, "OwnerInfo"

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/aI;->fc:Ljava/lang/String;

    .line 448
    const-string v1, "0"

    const-string v2, "PatternVisible"

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/aI;->fd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    const/4 v0, 0x0

    return-object v0

    .line 448
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling mount service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/aI;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 458
    iget v0, p0, Lcom/android/settings/aI;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040033

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f090801

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;I)I

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f10003a

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 470
    iget-object v3, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v3}, Lcom/android/settings/CryptKeeper;->i(Lcom/android/settings/CryptKeeper;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f100079

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    iget-object v3, p0, Lcom/android/settings/aI;->fc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->j(Lcom/android/settings/CryptKeeper;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/aI;->fd:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->k(Lcom/android/settings/CryptKeeper;)I

    move-result v0

    if-lez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;Z)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->d(Lcom/android/settings/CryptKeeper;)V

    .line 486
    :cond_1
    return-void

    .line 461
    :cond_2
    iget v0, p0, Lcom/android/settings/aI;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 462
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f040031

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0, v2}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f090802

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f04002f

    invoke-virtual {v0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/aI;->fb:Lcom/android/settings/CryptKeeper;

    const v3, 0x7f090800

    invoke-static {v0, v3}, Lcom/android/settings/CryptKeeper;->b(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_4
    move v0, v2

    .line 479
    goto :goto_1
.end method
