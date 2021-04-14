Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B47435FCDA
	for <lists+tipc-discussion@lfdr.de>; Wed, 14 Apr 2021 22:48:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lWmR9-0000Hu-C7; Wed, 14 Apr 2021 20:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lWmR7-0000He-V0
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Apr 2021 20:48:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GhGd9YPLyDgNCNR7mGD2WfStPdqay6MNUzGagbdJWr4=; b=Co6Fzps5UXhgyy8wXuFLEb+e6W
 RM4jAw8gm4A8bCUvKlUehQSrpxdKa9KeCex3LGLegrYPPSFXFHBAF4Arz7PYWIdVKkKRT8iaMjGIj
 qK91WILwLZqDe5fcriDUb2klxdJtPqhd8x72UEuitAorLF+MVB5gMgZscUPnEUzDXXLc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GhGd9YPLyDgNCNR7mGD2WfStPdqay6MNUzGagbdJWr4=; b=eeH0dacx6jnmfd/0tzXAmxQnnV
 HO0GUrxaqCG1xJ5I0/UPsq2pqp3Ah4A08AaPUbZCkJxYAlBbwGOdcuaJ7tMtS0Vj6heuZIiOhlMw1
 YslURyuOhLb8Z2MmByZRAuasMPFIJkMo68Sit+qKW4dMNaVWAyrOxZalj2IUPye9q/iE=;
Received: from mail-wr1-f48.google.com ([209.85.221.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lWmQy-0004gh-Na
 for tipc-discussion@lists.sourceforge.net; Wed, 14 Apr 2021 20:48:33 +0000
Received: by mail-wr1-f48.google.com with SMTP id k26so4713366wrc.8
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 14 Apr 2021 13:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GhGd9YPLyDgNCNR7mGD2WfStPdqay6MNUzGagbdJWr4=;
 b=JCmHtGjlVXETKdXwhIvmPd9BQ0hGKnM3hbfMKCJqKH0PkW9WmmRKsqF7xsgX3K4r0G
 DMKf94ArEdlpcVJ3ZQDITqAtStWVkXySpwOEK10wfun2tDar4JzMow9xJCnf3k+JV6KK
 CnkdGZdzuwpxFrUvQ2cIvyyxqQlmi+le2FmE+bwgsO+sFfYghQ12cxcyETW5C1ACPn4V
 cAETZCkzjPdf1Ap36Jvvxf0T6jK9idopHshHlWFvNfOu0tiu53nKm9tCiMMY5m9dO7C/
 jxXiywETDvWECaLyZyuFviaJU+KE8YFfZgOQeesSFSwXw5wWht+zrIWbxXg9ILkENLYP
 sNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GhGd9YPLyDgNCNR7mGD2WfStPdqay6MNUzGagbdJWr4=;
 b=rhl2JWxBWlQH4pWTye5Wszv277hUlNb/Wuv2hVDAck2+xYPYXnzJMC0TFFAU2WxxoW
 WXuRrC8u9DIt181u12pdiDk2lkjt3xHpNYKNf92ypsvoyr3obaF6V/upDOD6daZlzWKM
 TaRmylZHYcLytHbVeug5OnG80IABSSwNlvEG8g7PB6+1lb7nISj1mKqqwc9hzx83TNvw
 eomIE6IDDmEucrkD7TZ9KQ5RgeZ9LkiTrTh0JNODRWKEjaJPHhzsDY/dcdeZnzwMgzHW
 uhk74I1WrS0tQbk79/yaYFOdk22CwHKX/L4V402oAhoEgDHmKIOIokVVTEKmTZZaRoUh
 sJeg==
X-Gm-Message-State: AOAM531NdvvoVD6YFFMLKNFs3LV2b2Ey8zPWMQWEWDaNWqKmpvYxmOBC
 G1j8LmCs5kwM3tKE/2htTXZdJgOO9sZDPaW6MzY=
X-Google-Smtp-Source: ABdhPJxDBoQZKnI9w0z7s3eUzWlPqgG/n4v2PZUMq9cRqIe6H4Rvz2+HByjzKPrKAqEnu7aAdNbg/zuz+qfDCgoLxa0=
X-Received: by 2002:a5d:6a89:: with SMTP id s9mr6754373wru.157.1618433297316; 
 Wed, 14 Apr 2021 13:48:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210407205836.3187340-1-jmaloy@redhat.com>
In-Reply-To: <20210407205836.3187340-1-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 14 Apr 2021 16:48:06 -0400
Message-ID: <CADvbK_dp6=i+eoqd9Nd7jxuHyAi+932mChmQii0nJA1=xn4+bw@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.48 listed in wl.mailspike.net]
X-Headers-End: 1lWmQy-0004gh-Na
Subject: Re: [tipc-discussion] [net-next v2 0/3] tipc: some small cleanups
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Long Xin <lxin@redhat.com>, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, Apr 7, 2021 at 4:59 PM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> We make some minor code cleanups and improvements.
>
> ---
> v2: - Removed patch #1 from v1, which has now been applied upstream
>     - Fixed memory leak in patch #2 as identified by Hoang
>
> Jon Maloy (3):
>   tipc: eliminate redundant fields in struct tipc_sock
>   tipc: refactor function tipc_sk_anc_data_recv()
>   tipc: simplify handling of lookup scope during multicast message
>     reception
>
>  net/tipc/name_table.c |   6 +-
>  net/tipc/name_table.h |   4 +-
>  net/tipc/socket.c     | 149 +++++++++++++++++++-----------------------
>  3 files changed, 74 insertions(+), 85 deletions(-)
>
> --
> 2.29.2
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
LGTM!

Reviewed-by: Xin Long <lucien.xin@gmail.com>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
