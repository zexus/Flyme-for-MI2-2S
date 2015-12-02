.class Lcom/miui/compass/TutorialAnimation$AnimationItem;
.super Ljava/lang/Object;
.source "TutorialAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/compass/TutorialAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationItem"
.end annotation


# instance fields
.field mDuration:I

.field mResId:I

.field final synthetic this$0:Lcom/miui/compass/TutorialAnimation;


# direct methods
.method constructor <init>(Lcom/miui/compass/TutorialAnimation;II)V
    .locals 0
    .param p2, "resId"    # I
    .param p3, "duration"    # I

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/compass/TutorialAnimation$AnimationItem;->this$0:Lcom/miui/compass/TutorialAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p2, p0, Lcom/miui/compass/TutorialAnimation$AnimationItem;->mResId:I

    .line 94
    iput p3, p0, Lcom/miui/compass/TutorialAnimation$AnimationItem;->mDuration:I

    .line 95
    return-void
.end method
