.class Landroid/media/ExtraRingtoneManager$SoundItem;
.super Ljava/lang/Object;
.source "ExtraRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExtraRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundItem"
.end annotation


# instance fields
.field mActualDefaultRingtoneUri:Landroid/net/Uri;

.field mDefaultRingtoneUri:Landroid/net/Uri;

.field mRingtoneType:I

.field mSettingType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "ringtoneType"    # I
    .param p2, "actualDefaultRingtoneUri"    # Landroid/net/Uri;
    .param p3, "defaultRingtoneUri"    # Landroid/net/Uri;
    .param p4, "settingType"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput p1, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mRingtoneType:I

    .line 316
    iput-object p2, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mActualDefaultRingtoneUri:Landroid/net/Uri;

    .line 317
    iput-object p3, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 318
    iput-object p4, p0, Landroid/media/ExtraRingtoneManager$SoundItem;->mSettingType:Ljava/lang/String;

    .line 319
    return-void
.end method
