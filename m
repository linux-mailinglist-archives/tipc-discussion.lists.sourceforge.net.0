Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F58A1D12B4
	for <lists+tipc-discussion@lfdr.de>; Wed, 13 May 2020 14:32:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1jYqYS-0008IA-6c; Wed, 13 May 2020 12:32:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hung.ta@openclovis.com>) id 1jYqYQ-0008I3-7l
 for tipc-discussion@lists.sourceforge.net; Wed, 13 May 2020 12:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wXJsTX6i5mzwqoiQw3yIshqryRimXos8eb+AB1Bhwd4=; b=hSKpi/gi7quW8K5Sf9uPANbgrM
 AL27bwY1qZa78MlIM/5P7iVI/VVcOX8RAQ4Hz96lz8RwT1LZ8Jx9XbEfvQdgfVUh2exlDiYRdYGfp
 LGjy4cxPDdg3pUyxcn6nBrPE3+dRrhkRhWzAnB3NSz64Q985OCdd2nYrrEgXCRalRy2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wXJsTX6i5mzwqoiQw3yIshqryRimXos8eb+AB1Bhwd4=; b=QgjI2wkrSBiMbeQHh/FyPuHeUh
 ga+RZkxlGsL3/7XStnNkPJtcKs5g8Yvsc9ws6DQ+F25XhcI+xhVEBYA/PdZE9Cy/1dA2Omb+BONfE
 onwIFK7DCjZLacjoB3LzsVg7mGvbWa9MMwnLnC0mFcwpJScpt30n3HIzBph9BoDvH7sY=;
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jYqYI-007kpG-O1
 for tipc-discussion@lists.sourceforge.net; Wed, 13 May 2020 12:32:06 +0000
Received: by mail-ed1-f66.google.com with SMTP id h15so11782737edv.2
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 13 May 2020 05:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=openclovis-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wXJsTX6i5mzwqoiQw3yIshqryRimXos8eb+AB1Bhwd4=;
 b=sY26TwN4sDjh1vT1YXknH4GtzC5DAem32R8PQ8mweS2KpVYSFOZ99nMpXYTD+LxCIm
 Cn7XHITstT9KL4WADoprciuSXfBFZdkasmvI9qv95ZF2JSqAF6VvTXzJ0VXBf6Y/3FfU
 yRkH/pWAacgflrrmaUiO6Bj8P+8+Imb07w/OQqFbGVimO2IqPCE7HnbXjNZy3Z8gfbFh
 Ai8N25k7lQ7QugD+0o3xhbDhITbPEoKUY7DPmjp69ksxLIZtaoYBFvBtAkG1QlmX/Czu
 J3m9YUlrLMyj11Eywbt8NyICXH3Wc27pCNYeQHfqtN5SKxeCbsnPA+728P1gPF4L/Waw
 +ilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wXJsTX6i5mzwqoiQw3yIshqryRimXos8eb+AB1Bhwd4=;
 b=JLsBOyfCOlT7WwnSL2p2E4DbfUcoORKmVEqG4uI/km6HV9JlAPgl60ZY1ymWa3lcP8
 luonM395MsTdSml9J9ykSLplsOt6UXtcwcevnW5Wca4vCYuVUvMxDXj8xCLkXG2dIM4j
 3CVucxTZa1RRq2qY3+R/wXbUlOOTT+TobnDvc5OJjs3RdCtLXzsv1bgMiSLk83dDe71/
 HWlH4g0fYuFUjaxET+7LofqF+oUlgGqVNaA4K42uAuehMTg2oKoFgHXaoc9hcB2QthnU
 pBV6ZxTIz4bg0VChx/zYO1b+xMTTD4nI4K57apCoxhswRADF0TPvH725VqPC6UtL0Mhe
 XG+A==
X-Gm-Message-State: AGi0PuaTvu/U4xzqwItF1ZFf5+ZwJtcVUeGYhMCiLLxMu8uwzdC9FggS
 n3DLXgcNTTyMl6hbx1HvIEPcAQpXzBHD79rvG0CvYd29rqg=
X-Google-Smtp-Source: ABdhPJyhlOBb5Yuc7EgXLMGxMgzzJ2wDPfBg63E6RLj+7kR6KpTYqul8iq7OYNOvyxopYuTY2kd8VZcg1ahsbvTy2AI=
X-Received: by 2002:adf:df12:: with SMTP id y18mr5789600wrl.94.1589369595458; 
 Wed, 13 May 2020 04:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAH0Ghhvy9=hq8mBh61iag3-PMAFBMpmgaJWq3VmQA9szzLP4KQ@mail.gmail.com>
 <0d26039a-cc0e-cc0e-5b82-4492b38e75f6@windriver.com>
In-Reply-To: <0d26039a-cc0e-cc0e-5b82-4492b38e75f6@windriver.com>
From: Hung Ta <hung.ta@openclovis.com>
Date: Wed, 13 May 2020 18:32:38 +0700
Message-ID: <CAH0Ghhs=V7i+sL=an2m6R5wtK_SrObWoDfYEtZr-bTGFbcR-OQ@mail.gmail.com>
To: Ying Xue <ying.xue@windriver.com>
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jYqYI-007kpG-O1
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [tipc-discussion] TIPC_WITHDRAW event comes late
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

Hi Ying,

On Mon, May 11, 2020 at 8:52 PM Ying Xue <ying.xue@windriver.com> wrote:

> Please validate whether it appears with the latest kernel.
>
> If you cannot, please provide more detailed info:
>
> 1. Capture TIPC packets with tcpdump tool;
>
 Attached


> 2. Provide dmesg log, but be sure each line of demeg logs should be

prefixed by timestamps.
>
 Attached


> 3. Print timestamp as well when you receive TIPC_WITHDRAW on user land.
>
 Test scenario:
1. Setting up 2 nodes for the cluster, and getting them up
2. Reboot node 1 at 11:12:20. At node 2: until 11:12:30 (after 10s) the
WITHDRAW (death) event came:
Wed May 13 11:12:30.339 2020 [clTipcNotification.c:395] (scI1.1040 :
AMF.TIPC.NOTIF.01502 :   INFO) Got node [death] notification (2) for node
[1]

I'm testing on the latest Ubuntu release (20.04 64 bits ,
kernel 5.4.0-29-generic)

Thanks.


>
> On 5/8/20 11:01 AM, Hung Ta wrote:
> > Hi TIPC experts,
> >
> > I'm using the TIPC library in my project which needs to be aware of a
> node
> > leaves the cluster.
> >
> > So, I use socket type AF_TIPC and SOCK_SEQPACKET and connect it
> > to TIPC_TOP_SRV.
> >
> > I tried to get several nodes up and then make one of them leave and then
> I
> > can see the event TIPC_WITHDRAW seen, but the issue is it comes very
> late,
> > in particular,  it comes about 10 seconds late after a node left the
> > cluster.
> > I'm using Ubuntu 16.04, kernel 4.4.0-87-generic.
> > The same issue also occurs in Ubuntu 14.04.
> >
> > Why is it too late?
> > Appreciate your help.
> >
> > Thanks and regards,
> > Hung
> >
> > _______________________________________________
> > tipc-discussion mailing list
> > tipc-discussion@lists.sourceforge.net
> > https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> >
>

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
