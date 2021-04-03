Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F723531D7
	for <lists+tipc-discussion@lfdr.de>; Sat,  3 Apr 2021 03:16:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lSUtb-0001Jy-Q1; Sat, 03 Apr 2021 01:16:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dsahern@gmail.com>) id 1lSUta-0001Jk-K2
 for tipc-discussion@lists.sourceforge.net; Sat, 03 Apr 2021 01:16:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5k5sb3CSMxJH27w8zOtLdfdpPEt+zJypD6kRJDViD58=; b=Pk/3ZfW9+IPdug68wn07VJOuwT
 bfM5XFKlYNPYxgblwqcW7+6wzUOj9YWhw/xaqBciO6i48Vi9W5OBygJi1+mpD5mQ7wGoH+5ZqvBoC
 297FQVG6f7n2vyXpsE2+mHwW1ADjNiJSNYiAsDUmKCEqlyc6vMNT+SLbpYb+f20iTiBQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5k5sb3CSMxJH27w8zOtLdfdpPEt+zJypD6kRJDViD58=; b=PTGfxhkqeMGj1XxX9E05gl1V/E
 f/9EwGyGJEYyArkAiTnvAQALKUGwgCaQPBlVulpMcaVmCPYw7nBH+Pg6NVBntT+CgK3OgTO9gy1Hq
 9hKFEAxUzRKg2E9bazZBFaok2QKTR0614XmXkBZbS2MSrNUOUPXv0LhzlVF8nIm09kVE=;
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lSUtW-0093EV-DL
 for tipc-discussion@lists.sourceforge.net; Sat, 03 Apr 2021 01:16:14 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so6351802otn.1
 for <tipc-discussion@lists.sourceforge.net>;
 Fri, 02 Apr 2021 18:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=5k5sb3CSMxJH27w8zOtLdfdpPEt+zJypD6kRJDViD58=;
 b=sVKUoVpI0biN8qAnWSrPgtKUL8d/wolp/yn8XNI8CCpwTtjIEp4egolCiUl9nCOv2g
 vgeZqk3hKKxgFrXmzXoH38muKhngv+dE5OIlsOr1ZH3MhpcMh8W/4uZVyK+p9qnIs2ug
 OJYbIczk5Z/BuIjlaW7bI7NOJbpxVWpO1rE9yRD28u/0diSpMPZZ42VQLuiY6EMS4qgg
 Ad5B713l96mcD/owi/VXHIg+OIp6WFRXtQXj82LmKx23RK8oAGKgo9hbwOWjSXcUhC02
 JZj37wtm/6Kb5pB/rZDa5Ub6Y4jrYZS1rQKYsTZygtKxFp8qaaXoLdsMJ7Xk5jymf1A0
 L1Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5k5sb3CSMxJH27w8zOtLdfdpPEt+zJypD6kRJDViD58=;
 b=tf9E8+KZ/y1Nqfov/dSkAlfgEaR+JNgIa77kd7lyQAvx81/w0INs/w4M8Cghf4huSF
 S3wwNEYit/ieSocua/etfBBXULhzZ4yrJE7X/RYzedRpbb20t2Yuqbk7THuTx5VNyGWF
 hXGdibkuLcVdoBgiLyoBgj00afYC6rqLO8MCOSX8DC7uRLi5DGkbDtIlczRtXkOz2bW2
 FtNi7I3I7h+YumTZhr1a37TmUclL/mudoEseVBDf3UwfSd7Xupf5Ys3C2Tj90uipyusq
 tHhCG6Yh51p6cWuViISFUUpuRsBgJG/Is5edb0rTILzPA7owBGlleSbyJlyzYwe9Wyov
 rPeA==
X-Gm-Message-State: AOAM531g8Tqsrg7Wjf1hpxCgV90Aceku8edgGSjUVXYSCWdNdUqutUPL
 lGNFCcVtGkr966W/0f5SA70=
X-Google-Smtp-Source: ABdhPJyVb6hTzU3+I+CaRcy5roo+2D2xQ9DM4s4CDowx1UekqW999dFebnURmuGQsJnAtceU1EjGOQ==
X-Received: by 2002:a05:6830:225b:: with SMTP id
 t27mr13008201otd.73.1617412563603; 
 Fri, 02 Apr 2021 18:16:03 -0700 (PDT)
Received: from Davids-MacBook-Pro.local ([8.48.134.56])
 by smtp.googlemail.com with ESMTPSA id g22sm2098214oop.7.2021.04.02.18.16.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 02 Apr 2021 18:16:02 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>, netdev@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, jmaloy@redhat.com, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210401023409.6332-1-hoang.h.le@dektech.com.au>
From: David Ahern <dsahern@gmail.com>
Message-ID: <6d124a86-6474-77da-c3e1-cfc6dcf43903@gmail.com>
Date: Fri, 2 Apr 2021 19:16:01 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210401023409.6332-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dsahern[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.54 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1lSUtW-0093EV-DL
Subject: Re: [tipc-discussion] [iproute2-next] tipc: use the libmnl
 functions in lib/mnl_utils.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 3/31/21 8:34 PM, Hoang Le wrote:
> To avoid code duplication, tipc should be converted to use the helper
> functions for working with libmnl in lib/mnl_utils.c
> 
> Acked-by: Jon Maloy <jmaloy@redhat.com>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>  tipc/bearer.c    |  38 ++++++--------
>  tipc/cmdl.c      |   2 -
>  tipc/link.c      |  37 +++++--------
>  tipc/media.c     |  15 +++---
>  tipc/msg.c       | 132 +++--------------------------------------------
>  tipc/msg.h       |   2 +-
>  tipc/nametable.c |   5 +-
>  tipc/node.c      |  33 +++++-------
>  tipc/peer.c      |   8 ++-
>  tipc/socket.c    |  10 ++--
>  tipc/tipc.c      |  21 +++++++-
>  11 files changed, 83 insertions(+), 220 deletions(-)
> 

applied to iproute2-next.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
