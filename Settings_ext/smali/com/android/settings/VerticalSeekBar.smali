.class public Lcom/android/settings_ext/VerticalSeekBar;
.super Landroid/widget/AbsSeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private final zE:Ljava/lang/reflect/Method;

.field private zF:Landroid/graphics/drawable/Drawable;

.field private zG:Lcom/android/settings_ext/hn;

.field private zH:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ext/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zH:Landroid/graphics/Rect;

    .line 42
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 45
    const-string v2, "setProgress"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iput-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zE:Ljava/lang/reflect/Method;

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zF:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getHeight()I

    move-result v1

    .line 194
    sub-int v2, v1, v0

    iget v3, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingTop:I

    sub-int/2addr v2, v3

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 197
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getPaddingBottom()I

    move-result v4

    sub-int v4, v1, v4

    if-le v3, v4, :cond_1

    .line 198
    const/4 v0, 0x0

    .line 205
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/VerticalSeekBar;->i(F)V

    .line 206
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 200
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 202
    :cond_2
    iget v4, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method private hu()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 212
    :cond_0
    return-void
.end method

.method private i(F)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/VerticalSeekBar;->zE:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    float-to-int v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, v5}, Lcom/android/settings_ext/hn;->a(Lcom/android/settings_ext/VerticalSeekBar;IZ)V

    .line 225
    :cond_0
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 219
    float-to-int v1, p1

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/VerticalSeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/hn;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    .line 177
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 168
    :goto_0
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p0, v1, v1}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :goto_1
    return v0

    .line 153
    :pswitch_0
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x16

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 156
    :pswitch_1
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x15

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 159
    :pswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x14

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 162
    :pswitch_3
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v2, 0x13

    invoke-direct {v0, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1

    .line 151
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method hs()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    invoke-interface {v0, p0}, Lcom/android/settings_ext/hn;->a(Lcom/android/settings_ext/VerticalSeekBar;)V

    .line 183
    :cond_0
    return-void
.end method

.method ht()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zG:Lcom/android/settings_ext/hn;

    invoke-interface {v0, p0}, Lcom/android/settings_ext/hn;->b(Lcom/android/settings_ext/VerticalSeekBar;)V

    .line 189
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/VerticalSeekBar;->zH:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getHeight()I

    move-result v1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getWidth()I

    move-result v2

    .line 60
    iget-object v3, p0, Lcom/android/settings_ext/VerticalSeekBar;->zF:Landroid/graphics/drawable/Drawable;

    .line 62
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 65
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 68
    sub-int v6, v1, v5

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getMax()I

    move-result v7

    div-int/2addr v6, v7

    sub-int v6, v1, v6

    .line 71
    iget v7, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingLeft:I

    sub-int v5, v6, v5

    iget v8, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingLeft:I

    add-int/2addr v4, v8

    invoke-virtual {v3, v7, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 83
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 84
    iget v4, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingBottom:I

    sub-int v4, v1, v4

    iget v5, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingTop:I

    sub-int/2addr v4, v5

    .line 85
    iget v5, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingLeft:I

    iget v6, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingBottom:I

    sub-int v6, v1, v6

    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v7

    mul-int/2addr v4, v7

    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getMax()I

    move-result v7

    div-int/2addr v4, v7

    sub-int v4, v6, v4

    iget v6, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingRight:I

    sub-int/2addr v2, v6

    iget v6, p0, Lcom/android/settings_ext/VerticalSeekBar;->mPaddingBottom:I

    sub-int/2addr v1, v6

    invoke-virtual {v3, v5, v4, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/VerticalSeekBar;->setMeasuredDimension(II)V

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No background!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/AbsSeekBar;->onSizeChanged(IIII)V

    .line 114
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 144
    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/VerticalSeekBar;->setPressed(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->hs()V

    .line 125
    invoke-direct {p0, p1}, Lcom/android/settings_ext/VerticalSeekBar;->d(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings_ext/VerticalSeekBar;->d(Landroid/view/MotionEvent;)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ext/VerticalSeekBar;->hu()V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings_ext/VerticalSeekBar;->d(Landroid/view/MotionEvent;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->ht()V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings_ext/VerticalSeekBar;->ht()V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/VerticalSeekBar;->setPressed(Z)V

    goto :goto_1

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/settings_ext/VerticalSeekBar;->zF:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 109
    return-void
.end method
