Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6BC399463
	for <lists+tipc-discussion@lfdr.de>; Wed,  2 Jun 2021 22:15:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1loXGk-0003KD-BW; Wed, 02 Jun 2021 20:15:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lucien.xin@gmail.com>) id 1loXGi-0003Jz-Vp
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Jun 2021 20:15:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=es3BPMtVrHePc9/w9Y4A6++iBK4K3x8apIFH202/dVE=; b=jI4N7doMBNv0otroLkVUVcNUzN
 YKrrFYPox1QTQfZxTu4yKyMP7ycvl3viZ8R7QPoUqCJxzFF2U7iiS1vcITDKx9sznM7nwstB14wpN
 hNyw635hcBflgQwx+/v5931+1TYKdwaNp+zgpgN8O+2MW0zTc0MId0Io6fcPHXi6S76I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=es3BPMtVrHePc9/w9Y4A6++iBK4K3x8apIFH202/dVE=; b=acfYXIWwX8ukqujg0GDMvBlyBU
 yIeOnF2K+piCsnRXy7jAJkUp1E0k5IrTBqpdKn5JdP6xTdT2VDm8vCKfQWPorztw3FtfqSK37TFqD
 0GZzM2JRApo4/mQTh9J/Lx8mfI6YjPN/fdY8JI7/lw6R6ikGcjvzKMp9i3hTa01dgvvc=;
Received: from mail-wr1-f44.google.com ([209.85.221.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1loXGa-0000hw-04
 for tipc-discussion@lists.sourceforge.net; Wed, 02 Jun 2021 20:15:13 +0000
Received: by mail-wr1-f44.google.com with SMTP id a20so3570564wrc.0
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 02 Jun 2021 13:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=es3BPMtVrHePc9/w9Y4A6++iBK4K3x8apIFH202/dVE=;
 b=djeWh9plslcB44839fSvU8a/lY1bQJrsov25d/0YPkGhPBojyny37koPTH2Lm+/dFg
 MNs8UVtOVS8lTfJOv8UGj0uplCHGn/4QpRBlYz4Z9oiZLezZHilFTSXrTbVbQzMg7yOB
 sXpnrYjVFRDSrY32QmAvwtEuPnxYl6EajDKdQClp3g63ha96g1+QF0M/Rqj5VkqQH/Xx
 +UoN2w9X6z9s8aL0uhgOlCjEkBJsJadhH19dqtsqkSVe9Wmbeda8UAShkq7UQ7bbjMLL
 jfUWAU5idJ/RwN2s2vU19dO8UvP2wiGi4+8ilJsUkRTaz+a/ImlVuttB2V2zHVyRZ484
 35xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=es3BPMtVrHePc9/w9Y4A6++iBK4K3x8apIFH202/dVE=;
 b=K39TVdr2dfTbZmNX1qvdMqzzG6/mxifpFXhjOTmPWDl68lZuSOefjbkIvA6cUkCvfb
 fgv/5ilxW3U2bCl6nZQrhA2onX2nosxofsZg6gs5XWLunvH/C1Avvxnew8Ea4IZiEcth
 37+q8MdT7xTzdy7dyXCwkjbxTrk3orUKu7xQjquFrYPRJwo/M3JPwmR6wmGe2Gdm3xln
 RwpIZCy4CJKP8uOFeuCKtFCODdZ7TFzN2fWJl8f9dyVuE75+JZkj2UgWJn3jjMOlerxE
 QXXyN04HLSLHC/jPurdU2v3PBrnmt/+e8sllUWvKxNx9J6mUUCxUcB2qKzi4BR6divdb
 mD0A==
X-Gm-Message-State: AOAM5326LvwUZ/wvVuHFwSu+fCi2VM5L1SeDIViSQtP0KXNGgBypgzLO
 5W2A52jDj+S0DCcNyS1cdk2/FcdgI3Z4gN3NPyc=
X-Google-Smtp-Source: ABdhPJwqzP/+dGuKgHCvsT/GELhVEPo4qLZKjaQA+adXVuMRd9zbMcay1qHotKmfC3+hKZujeYZLqDIIs6RVkhJUUG8=
X-Received: by 2002:a05:6000:2cf:: with SMTP id
 o15mr35664112wry.243.1622664898402; 
 Wed, 02 Jun 2021 13:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
In-Reply-To: <VI1PR08MB4192C92F9657055B7EF4530F85249@VI1PR08MB4192.eurprd08.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Wed, 2 Jun 2021 16:14:47 -0400
Message-ID: <CADvbK_dB_qqTcTryfRTRXnp_GnH6L5woyyyY_iikrsP_VuBRLg@mail.gmail.com>
To: "Duzan, Gary D" <Gary.Duzan@fisglobal.com>, Jon Maloy <jmaloy@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (lucien.xin[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ericsson.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.44 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.221.44 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1loXGa-0000hw-04
Subject: Re: [tipc-discussion] DGRAM/STREAM Crossover on Debian?
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On Wed, May 26, 2021 at 11:38 AM Duzan, Gary D via tipc-discussion
<tipc-discussion@lists.sourceforge.net> wrote:
>
>    I'm in the process of enhancing a TIPC DGRAM-based RPC-ish service to include TIPC STREAM transport for larger messages. To simplify configuration, I have the server process(es) bind() the same type/range for both DGRAM and STREAM sockets (poll()ing to see which have incoming requests), then choose which to use on the client. This seems to work on most of my Linux systems (RHEL-8, Ubuntu 20.04/21.04, Fedora 34, Debian 11), but on my Debian 10 system (4.19.181-1 kernel) I am seeing messages from a DGRAM client appearing on an accept()ed STREAM socket on the server. I have confirmed that the client is not sending anything on a STREAM socket, and the message received by the server is formatted as a DGRAM message (without the message framing header).

When you start two scoket on the server: DGRAM and STREAM, in the
client's nametable there will be 2 sockets with different portids:
# tipc nametable show
Type       Lower      Upper      Scope    Port       Node
18888      17         17         cluster  4063960415
18888      17         17         cluster  1106254118

When the client calls sendmsg()/connect() to send msg to the server,
it will choose one of them by the rule of "local, closest-first or
round-robin".
The client doesn't know if the peer is a DGRAM socket or STREAM
socket. In your case, it should go round-robin.

Without this commit:

commit 25b9221b959483f17c2964d0922869e16caa86b5
Author: Jon Maloy <jon.maloy@ericsson.com>
Date:   Fri Sep 28 20:23:21 2018 +0200

    tipc: add SYN bit to connection setup messages

The SYN msg for STREAM is no different from the DATA msg for DGRAM.
that's what you're seeing in kernel-4.19

>
>    Debian isn't a target platform for production, so I don't need a specific fix, but it is still surprising and a bit disturbing. Was this a known problem with the 4.19 kernel? Are there particular reasons why using this pattern is a bad idea?
I think it may not work as expected if you create 2 different types of
TIPC sockets binding to the same address.
At least on the latest kernel, once the DGRAM client chooses the
STREAM socket, the DATA msg will be dropped.

Thanks.

>
>    Thanks.
>
> Gary Duzan
> FIS - GT.M Core
>
> The information contained in this message is proprietary and/or confidential. If you are not the intended recipient, please: (i) delete the message and all copies; (ii) do not disclose, distribute or use the message in any manner; and (iii) notify the sender immediately. In addition, please be aware that any message addressed to our domain is subject to archiving and review by persons other than the intended recipient. Thank you.
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
