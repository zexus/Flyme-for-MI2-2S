.class Lcom/android/settings_ext/gS;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private rD:Landroid/view/View;

.field final synthetic yO:Lcom/android/settings_ext/gR;


# direct methods
.method private constructor <init>(Lcom/android/settings_ext/gR;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ext/gR;Lcom/android/settings_ext/gJ;)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/android/settings_ext/gS;-><init>(Lcom/android/settings_ext/gR;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseArray;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 479
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v0, v1

    .line 480
    :goto_0
    if-ge v0, v2, :cond_0

    .line 481
    iget-object v3, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v3}, Lcom/android/settings_ext/gR;->a(Lcom/android/settings_ext/gR;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->c(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/gW;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings_ext/gW;->notifyDataSetChanged()V

    .line 484
    iget-object v0, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/settings_ext/gS;->rD:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 487
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Landroid/util/SparseArray;
    .locals 21

    .prologue
    .line 417
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 420
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    iget-object v2, v2, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ext/TrustedCredentialsSettings;->a(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v16

    .line 421
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    .line 424
    new-instance v18, Landroid/util/SparseArray;

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 426
    const/4 v3, 0x0

    .line 427
    const/4 v4, 0x0

    .line 428
    const/4 v2, 0x0

    move v15, v3

    move v3, v2

    :goto_0
    move/from16 v0, v17

    if-ge v3, v0, :cond_0

    .line 429
    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 430
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    iget-object v5, v5, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-virtual {v5}, Lcom/android/settings_ext/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v2

    .line 434
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    iget-object v5, v5, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v5}, Lcom/android/settings_ext/TrustedCredentialsSettings;->c(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    .line 436
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v5}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->a(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v2

    .line 437
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v15

    .line 438
    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v15, v5

    goto :goto_0

    .line 440
    :cond_0
    const/4 v2, 0x0

    move v14, v2

    :goto_1
    move/from16 v0, v17

    if-ge v14, v0, :cond_2

    .line 441
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 442
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 443
    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    iget-object v2, v2, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v2}, Lcom/android/settings_ext/TrustedCredentialsSettings;->c(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v3

    .line 446
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 447
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v20

    .line 448
    const/4 v2, 0x0

    move v12, v2

    move v13, v4

    :goto_2
    move/from16 v0, v20

    if-ge v12, v0, :cond_1

    .line 449
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/ParcelableString;

    iget-object v6, v2, Lcom/android/internal/util/ParcelableString;->string:Ljava/lang/String;

    .line 450
    const/4 v2, 0x1

    invoke-interface {v3, v6, v2}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 452
    invoke-static {v2}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 453
    new-instance v2, Lcom/android/settings_ext/gU;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v4}, Lcom/android/settings_ext/gR;->c(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/gW;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v5}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ext/gU;-><init>(Landroid/security/IKeyChainService;Lcom/android/settings_ext/gW;Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;ILcom/android/settings_ext/gJ;)V

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v5, 0x0

    add-int/lit8 v4, v13, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/gS;->publishProgress([Ljava/lang/Object;)V

    .line 448
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v13, v4

    goto :goto_2

    .line 457
    :cond_1
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 458
    move-object/from16 v0, v19

    invoke-virtual {v11, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 440
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v4, v13

    goto/16 :goto_1

    :cond_2
    move-object v2, v11

    .line 466
    :goto_3
    return-object v2

    .line 461
    :catch_0
    move-exception v2

    .line 462
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "Remote exception while loading aliases."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_3

    .line 464
    :catch_1
    move-exception v2

    .line 465
    const-string v3, "TrustedCredentialsSettings"

    const-string v4, "InterruptedException while loading aliases."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gS;->d([Ljava/lang/Void;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gS;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    iget-object v0, v0, Lcom/android/settings_ext/gR;->yE:Lcom/android/settings_ext/TrustedCredentialsSettings;

    invoke-static {v0}, Lcom/android/settings_ext/TrustedCredentialsSettings;->b(Lcom/android/settings_ext/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 411
    iget-object v0, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;->g(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    .line 412
    iget-object v0, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v0}, Lcom/android/settings_ext/gR;->c(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/gW;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/gS;->yO:Lcom/android/settings_ext/gR;

    invoke-static {v2}, Lcom/android/settings_ext/gR;->b(Lcom/android/settings_ext/gR;)Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings_ext/gW;->i(Lcom/android/settings_ext/TrustedCredentialsSettings$Tab;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/gS;->rD:Landroid/view/View;

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ext/gS;->rD:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 471
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    iget-object v2, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 475
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/gS;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 476
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/gS;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
