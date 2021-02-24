Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BED8323EEC
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Feb 2021 14:55:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lEudj-0004HW-13; Wed, 24 Feb 2021 13:55:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1lEudi-0004HN-2t
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:55:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zosLuXOkteJpAM4zsd+k9zS+i1gMumTospFoliCsvJE=; b=Ko9wjKlrVTEXlSlIEaRZFObYrX
 3EJxB4Rl19nb1rpvtblW/AMKjZT5aDtkZD8YkU+zOLKqwEeEo3J88Yj0tMFt1GiD2AwfNvRO2M9W/
 ONTnnUpcoMHgNutdBEXWOpewaxKhA3Iitw/w1fX6HhO4VDvNtEHC56m49FTCII6ExUB8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zosLuXOkteJpAM4zsd+k9zS+i1gMumTospFoliCsvJE=; b=LKCTg1rxyD/ZbVLLyVjoO7C4VH
 ry/WsCcMQHYw17xBjHkZCzYp8VNr1TzpZlI6rURA+c/4Tb4ATALPzQFzEeiKRLMzvYpJ8A9Su/0mk
 c8ACyoaY1VpbtFerWvynVtGCUS+0NzP32BhLAz4XDezq44EL0g9nBLXfKvONhGR0sPos=;
Received: from mail-wr1-f53.google.com ([209.85.221.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lEudd-0003fP-Gw
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Feb 2021 13:55:42 +0000
Received: by mail-wr1-f53.google.com with SMTP id c7so1968440wru.8
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 24 Feb 2021 05:55:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zosLuXOkteJpAM4zsd+k9zS+i1gMumTospFoliCsvJE=;
 b=aHb798n2SKXNVsMg4U9ibszXYq92h6B8HzgYMueBpd9Z3ZEMefASUg800rhUudM1gU
 iMMyexlPk+sJ0iXuOCUtwajksqHKwgwb/Nl0po6pxIP3uR3Dur6lXMr+ZDwS5seMAEM7
 IVtXdfDo4Gv8FTjSWrzG1/bXAUFHXx5JCSKf/DVsfrP0izYRSRasqCK34NFs6kTS2ClV
 rnPxU9bT1NiiFY+0mOKNDYqC7+sXiWf0KBlfOyWHNAwc0gaG40Szsrmz7Nej+dbSUhz5
 po9VEMeYT3zjJryFdqjz4bXIV2DReIg+yWdJKRgPMcZw7CqjH+2zHwtXZzRd/83HK3F2
 qBGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zosLuXOkteJpAM4zsd+k9zS+i1gMumTospFoliCsvJE=;
 b=DZNNMUouJW21MzXonN8ms2WvqgMBkxsGmuQTu+TDO+uWGnQ/LKzU/9fEH/XGx4mIYL
 43RgdK4Uwoue42HV6F0na/YsIMl/zDDPLnNAMJ+W7rq/lzfO3Mbx5yBc/saklMqwlFV4
 bejQ7PhJSdfHDSQMF+wwY93Ct67q/f9j3Z527gXE4dbfAtDeBh4ydrwl/2d6p8EQvLnx
 Lxk6iJ5afkoinFnwdSBFzSff3168jDZa4y/GbMzV0TWMuZppHDfJCBOVPNL9UEW0/iVY
 vZXKvYv0nuuUftnLMb5Rn9oXaqbtSWyM02pbC4Va2E4adEAx4yvCEp/0o4er9c7vo93Y
 cIYA==
X-Gm-Message-State: AOAM5308Zh/mSBQF0nCzrVhSOwTfpwMod8QPUaxXdKDw3iB4OTPfZGJc
 0LrSq6IUVlaVFtCc4RcziK4kRKZMMMseVWZB1f8=
X-Google-Smtp-Source: ABdhPJyzIeP2qzUqp8uC7raY6TJgdJr7TQIpad57L8OD8JD1V32ocDNX5DeowUfOqzPApBhH1xVOWNDdxcvkNonPUgk=
X-Received: by 2002:adf:fb03:: with SMTP id c3mr32101180wrr.395.1614174931199; 
 Wed, 24 Feb 2021 05:55:31 -0800 (PST)
MIME-Version: 1.0
References: <20201208185012.265508-1-jmaloy@redhat.com>
In-Reply-To: <20201208185012.265508-1-jmaloy@redhat.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 24 Feb 2021 21:55:20 +0800
Message-ID: <CADvbK_ctA-P=_m4Kp7oVQnHpuLcRgdAiA1nZxu_SkgwSmDFZ8A@mail.gmail.com>
To: Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.53 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lEudd-0003fP-Gw
Subject: Re: [tipc-discussion] [net-next 00/16] tipc: cleanups and
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
Cc: tipc-discussion@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,

Sorry for so late to check this patchset, I just came back from
Chinese New Year holidays.

Overall I like the idea to use one or two new structures to make the
parameters passing between functions more clear and readable.
Meanwhile I think if the parameters of some function are already
simple, we may just need to pass what the function only wants. After
all, ua->xxx will need CPU to access memory obj instead of read
registers only,  and we will have to build a ua object before calling
the function.

I just commented on some of the patches.

Thanks.

On Wed, Dec 9, 2020 at 2:51 AM <jmaloy@redhat.com> wrote:
>
> From: Jon Maloy <jmaloy@redhat.com>
>
> We make a number of simplifications and cleanups, especially to call signatures
> in the binding table. This makes the code easier to understand and serves as a
> preparation for an upcoming functional addition.
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
>  net/tipc/name_distr.c |  89 +++++----
>  net/tipc/name_table.c | 419 ++++++++++++++++++++++--------------------
>  net/tipc/name_table.h |  64 ++++---
>  net/tipc/net.c        |   8 +-
>  net/tipc/node.c       |  28 +--
>  net/tipc/socket.c     | 313 +++++++++++++++----------------
>  net/tipc/subscr.c     |  84 +++++----
>  net/tipc/subscr.h     |  12 +-
>  10 files changed, 567 insertions(+), 517 deletions(-)
>
> --
> 2.28.0
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
