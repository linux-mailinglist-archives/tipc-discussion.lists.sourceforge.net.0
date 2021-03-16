Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9331C33CC49
	for <lists+tipc-discussion@lfdr.de>; Tue, 16 Mar 2021 04:48:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lM0hR-0001Gd-3e; Tue, 16 Mar 2021 03:48:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lM0hQ-0001GV-03
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Mar 2021 03:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QMoM31E9M0eAdWeZIasQi7S2Vl7oL4+5SaZ8IibjCRE=; b=LlxF65qsOolKmFVIhpiZlJVom8
 oWDIo2iARBV6mUxFFhdofTzxOnQFMqNupUw60f3Fo1Qg5f2M4oYPt287JhXKgKBc7CoHeb+1WLgxx
 sH/2hSW55Yuf4hR3i19HGuodLpxb+soPgb6s6h+k2KL2H2m8A8qCR1rW7JDHnE6vcFZk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QMoM31E9M0eAdWeZIasQi7S2Vl7oL4+5SaZ8IibjCRE=; b=gN7ZrfKVNb0/vypjnhk3U7AWqh
 vX+OJkBr87n9jFAW4YBUEY20GsqhVpQvSSGbPCxxyuaphxhDVxnJl8Km5h18bYbH4BrNpDx4sAxO5
 iOi6zaJB+ICEdjLPrs4YcvN3HyH2jURzKdyfUZeIOBAantJNsrBzVqDv4X1tHErpPnbU=;
Received: from mail-wr1-f47.google.com ([209.85.221.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lM0hM-0002UQ-AM
 for tipc-discussion@lists.sourceforge.net; Tue, 16 Mar 2021 03:48:51 +0000
Received: by mail-wr1-f47.google.com with SMTP id j18so6714304wra.2
 for <tipc-discussion@lists.sourceforge.net>;
 Mon, 15 Mar 2021 20:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QMoM31E9M0eAdWeZIasQi7S2Vl7oL4+5SaZ8IibjCRE=;
 b=DNgMzpO1w+aVuQazPEMWiLfN+dH7Wm0Y+7WXE8U+/WikGDyeUaO+srMx3jtgwbKn07
 ooGdEWeQ1w8xAAE5UlK+e+ACH9sNyoiYjnYW3kqW1aM2oHE9i18Z9y45h2oUoWqMbL1I
 jRFfZ+1OKpdts4Gtwtzt43eDPrqlykrGRCye7zVmq5tl4SrDQ/IPGy0ZC1sOBCndkmhC
 0HGGmhW+CGMuco0VHWenUDXI9hn4xiqGm363Hflz3AqUdMWbnKzKigPCII7hrXwNRwbP
 LLqF8PK3WSflpPk5Tus1hE/dQMNYkcq8Xj8+vPqaP4Y6bcco9PowjSYvWJlx02zipvyq
 4EQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QMoM31E9M0eAdWeZIasQi7S2Vl7oL4+5SaZ8IibjCRE=;
 b=QSthML8frFpP96+o/R2HCa3Jvm4p7/bAhiwf83XMhfVkd1/4/OAb7bphhXoJK7K39q
 zRUXpXk4VR9P3ml585C9hZPeQ8LtuvfD1NsqiX3A++7ycALPRbYDZmvPj2aHaXN53yRy
 wodu0iPA16GOXxfHJGzhKEsoAuYePz0nWpZjugu4oqR4dIZjib/AVkyJi7hTeqpwwSJ1
 /hoimdB4JlabQxU5OvNGgTJko0SxTj1Qv/4VB/Ns45tMfzFbj+fhJI21866c8xHAYHvM
 lzDpmr32Z86fYaq+svuZNGhHVc1Apj4SUD0ciEkHsDxwxoViu+3beYoJDBDJpqkSRryR
 7XEQ==
X-Gm-Message-State: AOAM532tiDPtVBzERgRwEoIJyqgF00z4bm1C/mAde/hfRoR8PHaTsrg6
 s2kxc3DJUlWRqp7dob18i6tshcZiL4NZJeN3aY0=
X-Google-Smtp-Source: ABdhPJwvsAerJJMDpCwfvmvaPVHYj2EUbozJx94cwjHJVhW5ivtbkGKZfKjvSnyhm5LD0gKvPqTifYvFxeXUuw0fcsU=
X-Received: by 2002:a5d:5043:: with SMTP id h3mr2532142wrt.120.1615866522026; 
 Mon, 15 Mar 2021 20:48:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210227165542.3781624-1-jmaloy@redhat.com>
In-Reply-To: <20210227165542.3781624-1-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 16 Mar 2021 11:48:31 +0800
Message-ID: <CADvbK_f2kJ0AmzvrD5P4g2dX_AOv4Ae7sTh-wHwcVCbquRHk9Q@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.47 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.47 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lM0hM-0002UQ-AM
Subject: Re: [tipc-discussion] [net-next v2 00/16] tipc: cleanups and
 simplifications
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
Cc: xinl@redhat.com, tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Sun, Feb 28, 2021 at 12:56 AM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> We make a number of simplifications and cleanups, especially to call signatures
> in the binding table. This makes the code easier to understand and serves as a
> preparation for an upcoming functional addition.
>
> v2:
>    - Eliminated sparse warnings, as per feedback from Hoang
>    - Fixed some typos, as per feedback from Tung
>    - Fixed some issues noted by Xin:
>      #2/16: Moved spinlock.
>      #4/16: Added scope check and used tipc_uaddr() in tipc_sk_join()
>      #5/16: Eliminated 'addrtype' from struct publication (for now).
>      #6/16: 'node number' represented as decimal in some places and
>             hex in others. I will fix that in a separate patch later.
>      #8/16: Re-introduce use of node2scope(). This function is needed
>             later.
>      #13/16: This change does not look motivated right now, as stated
>              in the commit log, but will be needed later. I kept it,
>              just because of the consequences of removing it now and
>              having to re-introduce it later.
>      #14/16: Made tipc_sub_check_overlap() static, as also reported
>              by sparse.
>
> Jon Maloy (16):
>   tipc: re-organize members of struct publication
>   tipc: move creation of publication item one level up in call chain
>   tipc: introduce new unified address type for internal use
>   tipc: simplify signature of tipc_namtbl_publish()
>   tipc: simplify call signatures for publication creation
>   tipc: simplify signature of tipc_nametbl_withdraw() functions
>   tipc: rename binding table lookup functions
>   tipc: refactor tipc_sendmsg() and tipc_lookup_anycast()
>   tipc: simplify signature of tipc_namtbl_lookup_mcast_sockets()
>   tipc: simplify signature of tipc_nametbl_lookup_mcast_nodes()
>   tipc: simplify signature of tipc_nametbl_lookup_group()
>   tipc: simplify signature of tipc_service_find_range()
>   tipc: simplify signature of tipc_find_service()
>   tipc: simplify api between binding table and topology server
>   tipc: add host-endian copy of user subscription to struct
>     tipc_subscription
>   tipc: remove some unnecessary warnings
>
>  net/tipc/addr.h       |  44 +++++
>  net/tipc/msg.c        |  23 ++-
>  net/tipc/name_distr.c |  91 +++++----
>  net/tipc/name_table.c | 426 +++++++++++++++++++++---------------------
>  net/tipc/name_table.h |  63 +++----
>  net/tipc/net.c        |   8 +-
>  net/tipc/node.c       |  28 +--
>  net/tipc/socket.c     | 319 ++++++++++++++++---------------
>  net/tipc/subscr.c     |  84 +++++----
>  net/tipc/subscr.h     |  12 +-
>  10 files changed, 573 insertions(+), 525 deletions(-)
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
Acked-by: Xin Long <lucien.xin@gmail.com>


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
