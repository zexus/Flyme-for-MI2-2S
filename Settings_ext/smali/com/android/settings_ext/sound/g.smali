.class Lcom/android/settings_ext/sound/g;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ext/sound/w;


# instance fields
.field final synthetic ajq:Lcom/android/settings_ext/sound/e;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sound/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings_ext/sound/g;->ajq:Lcom/android/settings_ext/sound/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/sound/g;->ajq:Lcom/android/settings_ext/sound/e;

    invoke-static {v0, p1}, Lcom/android/settings_ext/sound/e;->a(Lcom/android/settings_ext/sound/e;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    return-void
.end method

.method public bK(I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/sound/g;->ajq:Lcom/android/settings_ext/sound/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ext/sound/e;->a(Lcom/android/settings_ext/sound/e;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    return-void
.end method
