.class public Lcom/miui/a/a/a;
.super Ljava/lang/Object;
.source "MiuiGalleryUtils.java"


# static fields
.field private static final aCi:[Ljava/lang/String;

.field private static final aCj:[Ljava/lang/String;

.field private static final aCk:Ljava/util/ArrayList;

.field private static final aCl:Ljava/util/ArrayList;

.field private static final aCm:Ljava/util/ArrayList;

.field private static final aCn:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://mij.cc/[a-z]+/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://mi1.cc/[a-zA-Z0-9\\-_]{16}#a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/a/a/a;->aCi:[Ljava/lang/String;

    .line 166
    sget-object v0, Lcom/miui/a/a/a;->aCi:[Ljava/lang/String;

    sput-object v0, Lcom/miui/a/a/a;->aCj:[Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/a/a/a;->aCk:Ljava/util/ArrayList;

    .line 169
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/a/a/a;->aCl:Ljava/util/ArrayList;

    .line 170
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/a/a/a;->aCm:Ljava/util/ArrayList;

    .line 171
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/miui/a/a/a;->aCn:Ljava/util/ArrayList;

    .line 174
    sget-object v0, Lcom/miui/a/a/a;->aCi:[Ljava/lang/String;

    sget-object v1, Lcom/miui/a/a/a;->aCk:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/a/a/a;->aCl:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a;->a([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 175
    sget-object v0, Lcom/miui/a/a/a;->aCj:[Ljava/lang/String;

    sget-object v1, Lcom/miui/a/a/a;->aCm:Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/a/a/a;->aCn:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/miui/a/a/a;->a([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 176
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 180
    if-eqz v3, :cond_0

    .line 181
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v4, "^%s$"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    return-void
.end method

.method public static bR(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Lcom/miui/a/a/b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/a/a/b;-><init>(Landroid/content/ContentResolver;)V

    .line 321
    invoke-virtual {v0}, Lcom/miui/a/a/b;->yz()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/a/a/b;->yy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gallery.ACTION_SCREENSAVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v1, "com.miui.gallery"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 327
    :cond_0
    return-void
.end method
