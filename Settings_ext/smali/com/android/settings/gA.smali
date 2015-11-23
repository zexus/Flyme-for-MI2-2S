.class Lcom/android/settings/gA;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic xX:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/SoundSettings;->a(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SoundSettings;->a(Landroid/net/Uri;I)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/SoundSettings;->b(Lcom/android/settings/SoundSettings;)Lcom/android/settings/DefaultRingtonePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SoundSettings;->a(Landroid/net/Uri;I)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/settings/gA;->xX:Lcom/android/settings/SoundSettings;

    invoke-virtual {v0}, Lcom/android/settings/SoundSettings;->fy()V

    .line 299
    return-void
.end method
