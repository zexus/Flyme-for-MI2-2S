.class public Lcom/android/settings/applications/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# instance fields
.field private final Dk:Landroid/app/AppOpsManager$PackageOps;

.field private final Dl:Ljava/util/ArrayList;

.field private final Dm:Ljava/util/ArrayList;

.field private final Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

.field private final Do:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dm:Ljava/util/ArrayList;

    .line 286
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dk:Landroid/app/AppOpsManager$PackageOps;

    .line 287
    iput-object p3, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 288
    iput p4, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Do:I

    .line 289
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->a(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dm:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method private a(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 343
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    aget-object v0, p2, v0

    .line 352
    :goto_0
    return-object v0

    .line 345
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 346
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 347
    if-lez v1, :cond_1

    .line 348
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    aget-object v0, p2, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 352
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6

    .prologue
    .line 295
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 296
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    .line 297
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 298
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    :goto_1
    return-void

    .line 304
    :cond_0
    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 305
    invoke-virtual {p0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 295
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    const v0, 0x7f09057a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 378
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f09057b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public a(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->CV:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->a(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->at(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dm:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 318
    :cond_0
    return-void
.end method

.method public au(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public b(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dm:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->CW:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->CW:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public iD()Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    return-object v0
.end method

.method public iE()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Do:I

    return v0
.end method

.method public iF()Landroid/app/AppOpsManager$PackageOps;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dk:Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dl:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->Dn:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
