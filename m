Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 73489EF77A
	for <lists+tipc-discussion@lfdr.de>; Tue,  5 Nov 2019 09:45:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iRuT7-0005UA-2A; Tue, 05 Nov 2019 08:45:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iRuT6-0005Tq-9O
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 08:45:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s324cJ2Hsr4n81iYp0MzuvlbhiBZ6wuJEZgtEERM+uU=; b=hv4uATr3huPdWaX6xSBKy9pPZw
 nFHE3PQTSpRBb/VfeKNBk85gTIuGBvSaBwesmClVUUGB4j3N5nmbnBKL2mc1Kc2rzR2PqX1KJaebN
 WUhmTaPcxFMrfHyh4NSvWe2tY4r59mZi9BkyPuoay5tEbbPxTPY93EyYbrRszCBjEmZ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:In-Reply-To:References:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s324cJ2Hsr4n81iYp0MzuvlbhiBZ6wuJEZgtEERM+uU=; b=RRPF0BWWJSg10QjpOhFTBDUnOB
 rHog17dL3xzb+sIEEtGCFyOcC6OrfcQBkbhsMBZj2TSxyZ/XCl4f4Xbcq5SZ7qsFIa9Yls4APpEnh
 Tl73E4f6kkIEGU+JAOPxjt2zbF+Zxf2/eOb0Rkmw6itaJadA2CiC6sI5lXeNDmYRhXgI=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iRuT0-000dSZ-Lh
 for tipc-discussion@lists.sourceforge.net; Tue, 05 Nov 2019 08:45:40 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id AA2334AA09;
 Tue,  5 Nov 2019 19:45:22 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=content-language:x-mailer:content-transfer-encoding
 :content-type:content-type:mime-version:message-id:date:date
 :subject:subject:in-reply-to:references:from:from:received
 :received:received; s=mail_dkim; t=1572943522; bh=s324cJ2Hsr4n81
 iYp0MzuvlbhiBZ6wuJEZgtEERM+uU=; b=V0sJiJzmA7tkIYeoKPYGCX34S3C2JK
 Yd3qYAO9xjr9dNuayZjpe+PqK/UYH4tPEeZeB2+SoJ2DLE9Mf10exKmKPo8nj6PC
 TNdOwzJiQltc/G+V2UkdS6RuNrSZPIQdkHIlt8HDbIJPr8B7+Fwd5sr7TgEcuOVy
 SXSq7FqYYHzoE=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ifuvVbIz_lE0; Tue,  5 Nov 2019 19:45:22 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 812EB4AA0A;
 Tue,  5 Nov 2019 19:45:22 +1100 (AEDT)
Received: from VNLAP288VNPC (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id 840384AA09;
 Tue,  5 Nov 2019 19:45:21 +1100 (AEDT)
From: "Tuong Lien Tong" <tuong.t.lien@dektech.com.au>
To: "'Ying Xue'" <ying.xue@windriver.com>,
 "'Jon Maloy'" <jon.maloy@ericsson.com>,
 <tipc-discussion@lists.sourceforge.net>, <maloy@donjonn.com>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
 <25A14D9CFAB7B34FB9440F90AFD35233013CA75E6D@ALA-MBD.corp.ad.wrs.com>
 <0b8c01d59303$2653aaa0$72faffe0$@dektech.com.au>
 <CH2PR15MB35756FD7A8A2A9C4B6AE04D49A7F0@CH2PR15MB3575.namprd15.prod.outlook.com>
 <e962530b-619c-81bc-4d11-e4d24a9284a4@windriver.com>
In-Reply-To: <e962530b-619c-81bc-4d11-e4d24a9284a4@windriver.com>
Date: Tue, 5 Nov 2019 15:45:20 +0700
Message-ID: <0bbd01d593b5$5c182eb0$14488c10$@dektech.com.au>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJ55eQdmJ78pEMJbmCC8GKP7rOD4wI+FA7qAgQrs9MCR0nEEgLXxjK0peiKCBA=
Content-Language: en-us
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iRuT0-000dSZ-Lh
Subject: Re: [tipc-discussion] [PATCH RFC 0/5] TIPC encryption
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

Hi Ying,

Yes, that makes sense.
I have updated the patches with your suggestion and am going to send them now.

As for patch #2, I guess you're referring to creating a preliminary node.
Let's consider it as separated from the tipc crypto as well. In fact, we had a boolean flag to control it, also in addition to the new kernel option, if the tipc crypto is disabled, it will be no meaningful at all but just fallback to the original one, so that the node must work exactly the same as usual (i.e. preliminary = false)... I think we can keep it without the "ifdef else" instructions, otherwise we might need to duplicate the code for two cases. Do you agree?

BR/Tuong

-----Original Message-----
From: Ying Xue <ying.xue@windriver.com> 
Sent: Tuesday, November 5, 2019 3:02 PM
To: Jon Maloy <jon.maloy@ericsson.com>; Tuong Tong Lien <tuong.t.lien@dektech.com.au>; tipc-discussion@lists.sourceforge.net; maloy@donjonn.com
Subject: Re: [PATCH RFC 0/5] TIPC encryption

On 11/5/19 5:33 AM, Jon Maloy wrote:
> Tuong, Ying
> I am ok with a kernel option, as long as it is enabled by default. I can imagine smaller embedded systems where the deployer want a small module, and encryption anyway is managed differently, or not at all.
> 
> ///jon

When I gave the suggestion to add a new kernel option, I also ever
figured out how to reach this goal based on this series of patches.

In my opinion, we don't need to modify the patches of making some
preparation things. For example, we don't need to change patch #1 at all.

Patch #3, #4 and #5 are almost completely separate with current code.
The only thing is that we need to consider how to modify patch #2. In
sum, it looks like it's not very difficult to introduce the new kernel
configuration option.

The kernel option not only can help us keep TIPC module size smaller,
but also can help us maintain it easily particularly with TIPC becoming
more and more complex. Lastly, probably it can help to make it possible
that the series of patches can be easily accepted by upstream if user
can disable the feature with a kernel option.




_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
