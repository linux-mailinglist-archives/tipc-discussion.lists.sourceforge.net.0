Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F236247FBA
	for <lists+tipc-discussion@lfdr.de>; Tue, 18 Aug 2020 09:47:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1k7wLP-0008Dn-AR; Tue, 18 Aug 2020 07:47:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1k7wLN-0008DW-IF
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 07:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sVK0YNx24HcPHuTH3IaMolBAgD7pbv/QLfZZdQZaySk=; b=UjUOSV0H2udq81U2mT5SqqCKy6
 MET7burBciakEnq2/9W0ygU5DHTSWenegHjipxC5ksWKbKbhS/UYjOsB7jN7qIlpQO6w7wUjNptqC
 5ewNvOPfqPc2yWR88ekw/e6aaafHOmKx3X26zpTtHHI7QdJdOuum6FHx+jY0BbWwjMt8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sVK0YNx24HcPHuTH3IaMolBAgD7pbv/QLfZZdQZaySk=; b=LJ9skuDkVbwcLKLfAYz+4EWeMR
 aGszYFxjc1Q0E3Ib5z6pH2LD7xEyL1lU76yaPVFrzvTjfIS9wf0ggKJfhvP89X371gJeu6RbYsPjd
 nKYQOeb9jHpwK9NuGXfFT0uREEe+pIPpLgAMLHwloqEYAZs7rslVYMUCvUE3hzZL48HQ=;
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7wLM-000G75-42
 for tipc-discussion@lists.sourceforge.net; Tue, 18 Aug 2020 07:47:41 +0000
Received: by mail-wm1-f67.google.com with SMTP id t14so16026601wmi.3
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 18 Aug 2020 00:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sVK0YNx24HcPHuTH3IaMolBAgD7pbv/QLfZZdQZaySk=;
 b=FF4U9KKcWZTLMAhLX4Fcxl2J7sLQbWeg20v/VEFr+XVuXDTQgsT52iJRq8aEZwoSIb
 7qVP3yIzdXkpaCXFb/mmNAQ0rfgV+8kgziuO+0RaVM/9E+XUjr5TVbeJRDW5y7jDoY9o
 W9cp2mcPIjJA1ClvA3rlWb9nWO4/HRUl1nRgBt1rmxLKhb3WxEyvDLK8fwn4FTuM+CiN
 bTjrKKCm2FvO9zXRzQ2ckBVI/zOcjFVZsjqecOHY2UyF8/e2VUhGZ2+/LWClaMtAkRcq
 SWwSBKxsn8ed7ey2jV3hb5fEN60KylIcFoVs3/cydfYKk51F4fYXPyUMy0R0aS4/a3qs
 A7lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sVK0YNx24HcPHuTH3IaMolBAgD7pbv/QLfZZdQZaySk=;
 b=RqTO+UQEp+LlBjntxXeo2B50hixqzehlr07U00JbOzqbgB3vheO3wyNAiIE8Ka1okF
 E28Ba68VxppZkayLRmlyhQIqgw+9Tmg3messo5ZUJRdsaKqm/s1dLwrcaPX5f7uvO8pH
 4hglx6ag0Ra136rQXlIAPiVj96aQR+s++texpYj5EZPrTqJu7GikFEC43+gAkiMGfeF3
 Z87JzVuOaXdGELkb2XvBXBoknesb/pPwbidCDxlv158YvOB8VBa43bhuoXILTuZY4vCo
 gSehyrhI25LtulOQeiG4k3Ap2x11y/jV4rUlb/hPFuWYaUj1muI6kFgzweToh+z2OW2r
 vMaQ==
X-Gm-Message-State: AOAM532Qc/2Qyr67jn4+UCkP0Ugmrs40YrxLhwIdsX3U7tT4tHhRsSrv
 s/FxrJT+CaAJTcK/03JOrpStm26pQBqOuWL5YLA=
X-Google-Smtp-Source: ABdhPJyUV2WCVKcLeeLpo7C5hGjThNOcX1cdQWbvujoQbH876XD3+EG6g5FDSqDazQd7SR/9aFNcT2TGF7QlBY+uXbk=
X-Received: by 2002:a1c:3dc3:: with SMTP id
 k186mr17727495wma.122.1597736846757; 
 Tue, 18 Aug 2020 00:47:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAM_iQpUQtof+dQseFjS6fxucUZe5tkhUW5EvK+XtZE=cRRq4-A@mail.gmail.com>
 <6d7aa56a-5324-87c9-4150-b73be7e3c0a6@infradead.org>
 <CAM_iQpUEjZzW-e=h30KZVvg02ZZMRHZn9JExxgn6E=XyWsjzNQ@mail.gmail.com>
 <20200817.143939.248108433650303983.davem@davemloft.net>
 <CAM_iQpUZZeZ-RYr-+h=r2TV7evL5AuJXe5gcso14TtBE+U82fg@mail.gmail.com>
In-Reply-To: <CAM_iQpUZZeZ-RYr-+h=r2TV7evL5AuJXe5gcso14TtBE+U82fg@mail.gmail.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 18 Aug 2020 15:59:59 +0800
Message-ID: <CADvbK_erTeDHk_Mh911=3AhSnL1+YNXNau-sLgm_2_eMUixvjQ@mail.gmail.com>
To: Cong Wang <xiyou.wangcong@gmail.com>, Jon Maloy <jmaloy@redhat.com>, 
 Ying Xue <ying.xue@windriver.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: davemloft.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k7wLM-000G75-42
Subject: Re: [tipc-discussion] [PATCH net] tipc: not enable tipc when ipv6
 works as a module
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, tipc-discussion@lists.sourceforge.net,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Tue, Aug 18, 2020 at 6:20 AM Cong Wang <xiyou.wangcong@gmail.com> wrote:
>
> On Mon, Aug 17, 2020 at 2:39 PM David Miller <davem@davemloft.net> wrote:
> >
> > From: Cong Wang <xiyou.wangcong@gmail.com>
> > Date: Mon, 17 Aug 2020 13:59:46 -0700
> >
> > > Is this a new Kconfig feature? ipv6_stub was introduced for
> > > VXLAN, at that time I don't remember we have such kind of
> > > Kconfig rules, otherwise it would not be needed.
> >
> > The ipv6_stub exists in order to allow the troublesome
> > "ipv6=m && feature_using_ipv6=y" combination.
For certain code, instead of IS_ENABLE(), use IS_REACHABLE().

>
> Hmm, so "IPV6=m && TIPC=y" is not a concern here as you pick
> this patch over adding a ipv6_stub?
>
This is more a question for TIPC users.

Hi, Jon and Ying,

Have you met any users having "IPV6=m && TIPC=y" in their kernels?


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
