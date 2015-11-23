.class Lcom/android/settings_ext/aF;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic eK:Lcom/android/settings_ext/CredentialStorage;

.field private eM:Z

.field private final eN:Landroid/widget/Button;

.field private final eO:Landroid/widget/TextView;

.field private final eP:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/CredentialStorage;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 449
    iput-object p1, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    const v0, 0x7f04002a

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 453
    invoke-static {p1}, Lcom/android/settings_ext/CredentialStorage;->b(Lcom/android/settings_ext/CredentialStorage;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 454
    invoke-virtual {p1}, Lcom/android/settings_ext/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09077d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 463
    :goto_0
    const v0, 0x7f100067

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const v0, 0x7f10006a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    .line 465
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 467
    const v0, 0x7f100068

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/aF;->eP:Landroid/widget/TextView;

    .line 469
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09077c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 476
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 477
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/aF;->eN:Landroid/widget/Button;

    .line 478
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eN:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    return-void

    .line 455
    :cond_0
    invoke-static {p1}, Lcom/android/settings_ext/CredentialStorage;->b(Lcom/android/settings_ext/CredentialStorage;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 456
    invoke-virtual {p1}, Lcom/android/settings_ext/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090781

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 457
    :cond_1
    invoke-static {p1}, Lcom/android/settings_ext/CredentialStorage;->b(Lcom/android/settings_ext/CredentialStorage;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 458
    invoke-virtual {p1}, Lcom/android/settings_ext/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090782

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 460
    :cond_2
    const v0, 0x7f090783

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/settings_ext/CredentialStorage;->b(Lcom/android/settings_ext/CredentialStorage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_ext/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/CredentialStorage;Lcom/android/settings_ext/aB;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/android/settings_ext/aF;-><init>(Lcom/android/settings_ext/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Lcom/android/settings_ext/aF;->eN:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    return-void

    .line 482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 486
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 492
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/aF;->eM:Z

    .line 493
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 496
    iget-boolean v0, p0, Lcom/android/settings_ext/aF;->eM:Z

    if-eqz v0, :cond_3

    .line 497
    iput-boolean v2, p0, Lcom/android/settings_ext/aF;->eM:Z

    .line 498
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eP:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings_ext/CredentialStorage;->a(Lcom/android/settings_ext/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/aF;->eO:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 500
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings_ext/CredentialStorage;->a(Lcom/android/settings_ext/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 501
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings_ext/CredentialStorage;->a(Lcom/android/settings_ext/CredentialStorage;I)I

    .line 503
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    const v1, 0x7f090786

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 508
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings_ext/CredentialStorage;->c(Lcom/android/settings_ext/CredentialStorage;)V

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/settings_ext/CredentialStorage;->a(Lcom/android/settings_ext/CredentialStorage;I)I

    .line 511
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    const v1, 0x7f090784

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 515
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings_ext/CredentialStorage;->d(Lcom/android/settings_ext/CredentialStorage;)V

    goto :goto_0

    .line 516
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/settings_ext/CredentialStorage;->a(Lcom/android/settings_ext/CredentialStorage;I)I

    .line 519
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-static {v0}, Lcom/android/settings_ext/CredentialStorage;->d(Lcom/android/settings_ext/CredentialStorage;)V

    goto :goto_0

    .line 523
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/aF;->eK:Lcom/android/settings_ext/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/settings_ext/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 489
    return-void
.end method
