.class Lcom/android/settings/sound/p;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"


# instance fields
.field final synthetic ajq:Lcom/android/settings/sound/e;

.field public ajz:Ljava/util/List;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/settings/sound/e;)V
    .locals 1

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/sound/p;->ajq:Lcom/android/settings/sound/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sound/p;->ajz:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sound/e;Lcom/android/settings/sound/f;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/sound/p;-><init>(Lcom/android/settings/sound/e;)V

    return-void
.end method
