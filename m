Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 655FB5406D0
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Jun 2022 19:38:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nydAF-00056w-CV; Tue, 07 Jun 2022 17:38:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <lucien.xin@gmail.com>) id 1nydAD-00056q-PT
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 17:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nQ5Cxj9tKUpFlIr6ENQK6Kxxd23AXN5H6FRK7I+1mRo=; b=EfY8TT7IB3eO4rADrdeF62V46Q
 kceTrj7cRUChxEHONR0N8g1vZAo7ZaOEhq9o3ItpjYxssrzZAF9pH9Hj/IDhl9ilalPtW+/K1sk9j
 BveGDgps0ZycnMPqE3Yu2yCHJruYJb7Qcjnfo6i1hND1VpSz92/weoV61e1k9orVwsX4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nQ5Cxj9tKUpFlIr6ENQK6Kxxd23AXN5H6FRK7I+1mRo=; b=NJgr0/V9T0BmqhXq/kS3ynrpjU
 2R1zde3ad9UKSSUg415GIXa4lfihdPDNJzw2FnDdRWRD7Sq+R1mce7C8GhVoxnCXij4gswfDKuv5A
 vMvrmLe9G03VfaBaQt7N3yEbNm4q9Qt4srfB2pIRy60q5Mu2wVtcb6pwvur9ukMLgWac=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nydAD-008UqY-Uz
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 17:38:46 +0000
Received: by mail-oi1-f176.google.com with SMTP id i66so24775123oia.11
 for <tipc-discussion@lists.sourceforge.net>;
 Tue, 07 Jun 2022 10:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nQ5Cxj9tKUpFlIr6ENQK6Kxxd23AXN5H6FRK7I+1mRo=;
 b=Grbw1sD/dbIGaYKh/AVd/b20MnN8MPsorIlKunc8I9aBPlBTCRtKS12wCFyzUwUhv1
 GBdNah1FAObI4V4sYSOt2Hdx8RPXcM79UwFQATff4O/GCeLHZkPKvOZfcFv9VZFyVs9d
 cpcgID+WJ0l7jL0MIwZna9gr4PZf3U+NESCb0fiFyWOmPXYTnOxOft8qnaDv6NdP0Ywy
 ncC1j5LZ4EA1gImayC23rqsLDe+j0y3YEv7oZJeohoo86STW7tbzZjO/V+orovavX+VK
 n27uVdaEyKQY7Pvjhd4ER5zlnL0VHG5RJYHEk8T39l52HH4LOWb+eSc3agR6BebI1NNx
 RGPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nQ5Cxj9tKUpFlIr6ENQK6Kxxd23AXN5H6FRK7I+1mRo=;
 b=wdi0aRsz5z8lTDwn5EMoDC9D7TnT1sbpHqTDRw2eC4QtwL+r2piTI2bJsSH/raL0ip
 JWEPRjFMJN63wYwvYYVcggwh69uUf4bQrMUUs5I9ZDbQ2bqcxCO5ykoJ3VrTOXSNaWGc
 8hXqkNN0uZuZp/TOfbPNXfP+S+P4PWjvfa2QZthUNRZVmzezW9MyTz0glqo/V0bNw7Fk
 U5TjxWyRQ9sF97CylzxKQpUDZcTX0q9F5k4QoueQUEtqoFheH6jX+pNpdJZ6jvA4fN1k
 6mE2a5fki2BBZy2GJZCQ/lJF3t43CItNz2ZGEfWMcH+xI7q40sSdZw2RJ5vEHopX7Pq1
 OHyQ==
X-Gm-Message-State: AOAM532VM3ilaHl0ezHNmNWyYfVGEzYxVQnsp0zoK3GcSJRdFVjGNAC0
 D96BjEc1z2VWB3bp6Mkn+HOG8zYF8fTU5S6/AtCpmv9wcHI=
X-Google-Smtp-Source: ABdhPJxGoD4/g1XPaZhqbYDL9ca3egYODRESAmL+qtDY+3l2Zhb9W211RJGbtJz9hEou+yD6lwqXTjBO37xBIocDToc=
X-Received: by 2002:aca:b786:0:b0:32b:8df1:919b with SMTP id
 h128-20020acab786000000b0032b8df1919bmr25152049oif.190.1654619973683; Tue, 07
 Jun 2022 09:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
 <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
 <DB9PR05MB9078054C471650427E268FFD88A59@DB9PR05MB9078.eurprd05.prod.outlook.com>
In-Reply-To: <DB9PR05MB9078054C471650427E268FFD88A59@DB9PR05MB9078.eurprd05.prod.outlook.com>
From: Xin Long <lucien.xin@gmail.com>
Date: Tue, 7 Jun 2022 12:39:17 -0400
Message-ID: <CADvbK_c1VtrT2GVkFUTZXDAZJbo6dcFMUR8QZ2qumonDD+SYng@mail.gmail.com>
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 6, 2022 at 11:20 PM Tung Quang Nguyen wrote: >
 > > Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [lucien.xin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.176 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.176 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nydAD-008UqY-Uz
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
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

On Mon, Jun 6, 2022 at 11:20 PM Tung Quang Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> > -----Original Message-----
> > From: Xin Long <lucien.xin@gmail.com>
> > Sent: Tuesday, June 7, 2022 12:57 AM
> > To: tipc-discussion@lists.sourceforge.net
> > Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from tipc_bc_base
> >
> > fix Jon's email address.
> >
> > On Mon, Jun 6, 2022 at 1:52 PM Xin Long <lucien.xin@gmail.com> wrote:
> > >
> > > After Commit 2af5ae372a4b ("tipc: clean up unused code and structures"),
> > > there is no place really using tn->bcbase->inputq. This patch is to
> > > delete this member from struct tipc_bc_base.
>
> We cannot delete this queue because it is currently used to contain wakeup messages for broadcast send link.
> See this calling flow: tipc_rcv() --> tipc_node_bc_sync_rcv() --> tipc_bcast_sync_rcv() --> tipc_link_bc_ack_rcv() --> link_prepare_wakeup()
> link_prepare_wakeup() copies wakeup messages from the wakeup queue to the tipc_bc_base->inputq. Then, the wakeup is done in tipc_bcast_sync_rcv()
>
You're right, thanks!


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
